
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int convolve_5x5_avx (float*,float*,float*,long,long,long,long) ;
 int convolve_5x5_sse (float*,float*,float*,long,long,long,long) ;
 int haveCPUFeature (int ) ;
 int kCPUFeature_AVX ;

void convolve_5x5(float* output, float* input, float* kernel, long outRows, long outCols, long inCols) {
  {
    convolve_5x5_sse(output, input, kernel, outRows, outCols, outCols, inCols);
  }
}
