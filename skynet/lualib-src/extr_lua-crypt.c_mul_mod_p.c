
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int P ;

__attribute__((used)) static inline uint64_t
mul_mod_p(uint64_t a, uint64_t b) {
 uint64_t m = 0;
 while(b) {
  if(b&1) {
   uint64_t t = P-a;
   if ( m >= t) {
    m -= t;
   } else {
    m += a;
   }
  }
  if (a >= P - a) {
   a = a * 2 - P;
  } else {
   a = a * 2;
  }
  b>>=1;
 }
 return m;
}
