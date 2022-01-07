
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int n ;
typedef int __m128d ;


 int _mm_div_pd (int ,int ) ;
 int _mm_loadu_pd (double const*) ;
 int _mm_storeu_pd (double*,int ) ;

__attribute__((used)) static void THDoubleVector_cdiv_SSE(double *z, const double *x, const double *y, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128d XMM0, XMM1, XMM2, XMM3;
  for (i=0; i<=((n)-4); i+=4) {
    XMM0 = _mm_loadu_pd(x+i);
    XMM1 = _mm_loadu_pd(x+i+2);
    XMM2 = _mm_loadu_pd(y+i);
    XMM3 = _mm_loadu_pd(y+i+2);
    XMM2 = _mm_div_pd(XMM0, XMM2);
    XMM3 = _mm_div_pd(XMM1, XMM3);
    _mm_storeu_pd(z+i, XMM2);
    _mm_storeu_pd(z+i+2, XMM3);
  }
  for (; i<(n); i++) {
    z[i] = x[i] / y[i];
  }
}
