
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int BPS ;

__attribute__((used)) static void Mean16x4_C(const uint8_t* ref, uint32_t dc[4]) {
  int k, x, y;
  for (k = 0; k < 4; ++k) {
    uint32_t avg = 0;
    for (y = 0; y < 4; ++y) {
      for (x = 0; x < 4; ++x) {
        avg += ref[x + y * BPS];
      }
    }
    dc[k] = avg;
    ref += 4;
  }
}
