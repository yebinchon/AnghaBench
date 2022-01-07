
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z ;
typedef int y ;
typedef int x ;
typedef int ptrdiff_t ;
typedef int n ;
typedef int __m128d ;


 int _mm_add_pd (int ,int ) ;
 int _mm_loadu_pd (int ) ;
 int _mm_mul_pd (int ,int ) ;
 int _mm_set1_pd (double const) ;
 int _mm_storeu_pd (int ,int ) ;

__attribute__((used)) static void THDoubleVector_cadd_SSE(double *z, const double *x, const double *y, const double c, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128d XMM7 = _mm_set1_pd(c);
  __m128d XMM0, XMM2;
  for (i=0; i<=((n)-2); i+=2) {
    XMM0 = _mm_loadu_pd((x)+i);
    XMM2 = _mm_loadu_pd((y)+i);
    XMM2 = _mm_mul_pd(XMM2, XMM7);
    XMM2 = _mm_add_pd(XMM0, XMM2);
    _mm_storeu_pd((z)+i, XMM2);
  }
  for (; i<(n); i++) {
    z[i] = x[i] + c * y[i];
  }
}
