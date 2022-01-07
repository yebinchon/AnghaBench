
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ VP8AccumulateSSE (int const*,int const*,int) ;

__attribute__((used)) static double AccumulateSSE(const uint8_t* src, int src_stride,
                            const uint8_t* ref, int ref_stride,
                            int w, int h) {
  int y;
  double total_sse = 0.;
  for (y = 0; y < h; ++y) {
    total_sse += VP8AccumulateSSE(src, ref, w);
    src += src_stride;
    ref += ref_stride;
  }
  return total_sse;
}
