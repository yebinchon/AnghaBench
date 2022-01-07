
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DELTA_SIZE ;
 int assert (int) ;
 int** kLevelsFromDelta ;

int VP8FilterStrengthFromDelta(int sharpness, int delta) {
  const int pos = (delta < MAX_DELTA_SIZE) ? delta : MAX_DELTA_SIZE - 1;
  assert(sharpness >= 0 && sharpness <= 7);
  return kLevelsFromDelta[sharpness][pos];
}
