
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ x ;
typedef int ptrdiff_t ;
typedef int n ;
typedef int __m128d ;


 int _mm_set1_pd (double const) ;
 int _mm_storeu_pd (scalar_t__,int ) ;

__attribute__((used)) static void THDoubleVector_fill_SSE(double *x, const double c, const ptrdiff_t n) {
  ptrdiff_t i;
  ptrdiff_t off;
  __m128d XMM0 = _mm_set1_pd(c);
  for (i=0; i<=((n)-8); i+=8) {
    _mm_storeu_pd((x)+i , XMM0);
    _mm_storeu_pd((x)+i+2, XMM0);
    _mm_storeu_pd((x)+i+4, XMM0);
    _mm_storeu_pd((x)+i+6, XMM0);
  }
  off = (n) - ((n)%8);
  for (i=0; i<((n)%8); i++) {
    x[off+i] = c;
  }
}
