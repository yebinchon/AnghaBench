
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ const GradientPredictor_C (scalar_t__,scalar_t__,scalar_t__) ;
 int HorizontalUnfilter_C (int *,scalar_t__ const*,scalar_t__*,int) ;

__attribute__((used)) static void GradientUnfilter_C(const uint8_t* prev, const uint8_t* in,
                               uint8_t* out, int width) {
  if (prev == ((void*)0)) {
    HorizontalUnfilter_C(((void*)0), in, out, width);
  } else {
    uint8_t top = prev[0], top_left = top, left = top;
    int i;
    for (i = 0; i < width; ++i) {
      top = prev[i];
      left = (uint8_t)(in[i] + GradientPredictor_C(left, top, top_left));
      top_left = top;
      out[i] = left;
    }
  }
}
