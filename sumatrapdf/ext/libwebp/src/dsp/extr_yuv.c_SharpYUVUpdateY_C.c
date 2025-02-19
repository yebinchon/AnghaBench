
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint16_t ;


 scalar_t__ abs (int const) ;
 int clip_y (int const) ;

__attribute__((used)) static uint64_t SharpYUVUpdateY_C(const uint16_t* ref, const uint16_t* src,
                                  uint16_t* dst, int len) {
  uint64_t diff = 0;
  int i;
  for (i = 0; i < len; ++i) {
    const int diff_y = ref[i] - src[i];
    const int new_y = (int)dst[i] + diff_y;
    dst[i] = clip_y(new_y);
    diff += (uint64_t)abs(diff_y);
  }
  return diff;
}
