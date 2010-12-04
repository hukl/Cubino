// Arduino Pin / 74hc595 Pin
// 11 Data Serial In (14)
// 12 Storage register clock  (12)
// 13 Shift Register Clock    (11)

// 
// 1  32  256
// 2  16  128
// 4   8   64
//

int data_pin  = 11;
int latch_pin = 12;
int clock_pin = 13;

int level_1 = 512;
int level_2 = 1024;
int level_3 = 2048;

#define FRAME_COUNT 100

int frames[FRAME_COUNT][3] = { 
                               {7,7,7},
                               {63,63,63},
                               {1016, 1016, 1016},
                               {146,146,146},
                               {146,146,146},
                               {146,146,146},
                               {146,146,146},
                               {146,146,146},
                               {7, 7<<3, 7<<6},
                               {7<<3, 7<<3, 7<<3},
                               {7<<6, 7<<3, 7},
                               {0, 511, 0},
                               {7, 7<<3, 7<<6},
                               {7<<3, 7<<3, 7<<3},
                               {7<<6, 7<<3, 7},
                               {0, 511, 0},
                               {0, 511, 0},
                               {511,511,0},
                               {511,511,511},
                               {0,0,7},
                               {0,0,56},
                               {0,0,448},
                               {0,448,0},
                               {0,56,0},
                               {0,7,0},
                               {7,0,0},
                               {56,0,0},
                               {448,0,0},
                               {448,0,0},
                               {56,0,0},
                               {7,0,0},
                               {0,7,0},
                               {0,56,0},
                               {0,448,0},
                               {0,0,448},
                               {0,0,56},
                               {0,0,7},
                               {0,0,289},
                               {0,0,146},
                               {0,0,76},
                               {0,76,0},
                               {0,146,0},
                               {0,289,0},
                               {289,0,0},
                               {146,0,0},
                               {76,0,0},
                               {1,0,0},
                               {2,0,0},
                               {4,0,0},
                               {8,0,0},
                               {16,0,0},
                               {32,0,0},
                               {256,0,0},
                               {128,0,0},
                               {64,0,0},
                               {0,1,0},
                               {0,2,0},
                               {0,4,0},
                               {0,8,0},
                               {0,16,0},
                               {0,32,0},
                               {0,256,0},
                               {0,128,0},
                               {0,64,0},
                               {0,0,1},
                               {0,0,2},
                               {0,0,4},
                               {0,0,8},
                               {0,0,16},
                               {0,0,32},
                               {0,0,256},
                               {0,0,128},
                               {0,0,64},
                               {1,32,256},
                               {2,16,128},
                               {4,8,64},
                               {2,2,2},
                               {21,21,21},
                               {168,168,168},
                               {320,320,320},
                               {0,0,0},
                               {1,1,1},
                               {33,33,33},
                               {289,289,289},
                               {288,288,288},
                               {256,256,256},
                               {0,0,0},
                               {2,2,2},
                               {18,18,18},
                               {144,144,144},
                               {128,128,128},
                               {0,0,0},
                               {0,0,0},
                               {4,4,4},
                               {12,12,12},
                               {76,76,76},
                               {72,72,72},
                               {64,64,64},
                               {0,0,0},
                               {0,0,0}
                              };

void setup() {
  pinMode(latch_pin, OUTPUT);
  pinMode(clock_pin, OUTPUT);
  pinMode(data_pin, OUTPUT);
}

void loop() {
  for (int f = 0; f < FRAME_COUNT; f++) {
    
    for (int i=0; i<30; i++) {
      // level 1
      digitalWrite(latch_pin, LOW);
      shiftOut(data_pin, clock_pin, MSBFIRST, ( frames[f][0] >> 8) | 2);
      shiftOut(data_pin, clock_pin, MSBFIRST, frames[f][0]);
      digitalWrite(latch_pin, HIGH);
      delayMicroseconds(1000);
      
      // level 2
      digitalWrite(latch_pin, LOW);
      shiftOut(data_pin, clock_pin, MSBFIRST, ( frames[f][1] >> 8) | 4 );
      shiftOut(data_pin, clock_pin, MSBFIRST, frames[f][1]);
      digitalWrite(latch_pin, HIGH);
      delayMicroseconds(1000);
      
      // level 2
      digitalWrite(latch_pin, LOW);
      shiftOut(data_pin, clock_pin, MSBFIRST, ( frames[f][2] >> 8 ) | 8);
      shiftOut(data_pin, clock_pin, MSBFIRST, frames[f][2]);
      digitalWrite(latch_pin, HIGH);
      delayMicroseconds(1000);
    }
    
  }

}