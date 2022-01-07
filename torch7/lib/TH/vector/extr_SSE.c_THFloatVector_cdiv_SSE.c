
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int n ;
typedef int __m128 ;


 int _mm_div_ps (int ,int ) ;
 int _mm_loadu_ps (float const*) ;
 int _mm_storeu_ps (float*,int ) ;

__attribute__((used)) static void THFloatVector_cdiv_SSE(float *z, const float *x, const float *y, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128 XMM0, XMM1, XMM2, XMM3;
  for (i=0; i<=((n)-8); i+=8) {
    XMM0 = _mm_loadu_ps(x+i);
    XMM1 = _mm_loadu_ps(x+i+4);
    XMM2 = _mm_loadu_ps(y+i);
    XMM3 = _mm_loadu_ps(y+i+4);
    XMM2 = _mm_div_ps(XMM0, XMM2);
    XMM3 = _mm_div_ps(XMM1, XMM3);
    _mm_storeu_ps(z+i, XMM2);
    _mm_storeu_ps(z+i+4, XMM3);
  }
  for (; i<(n); i++) {
    z[i] = x[i] / y[i];
  }
}
