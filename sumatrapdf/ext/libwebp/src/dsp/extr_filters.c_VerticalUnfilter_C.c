
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int HorizontalUnfilter_C (int *,scalar_t__ const*,scalar_t__*,int) ;

__attribute__((used)) static void VerticalUnfilter_C(const uint8_t* prev, const uint8_t* in,
                               uint8_t* out, int width) {
  if (prev == ((void*)0)) {
    HorizontalUnfilter_C(((void*)0), in, out, width);
  } else {
    int i;
    for (i = 0; i < width; ++i) out[i] = (uint8_t)(prev[i] + in[i]);
  }
}
