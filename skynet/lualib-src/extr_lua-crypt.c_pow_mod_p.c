
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mul_mod_p (int,int) ;

__attribute__((used)) static inline uint64_t
pow_mod_p(uint64_t a, uint64_t b) {
 if (b==1) {
  return a;
 }
 uint64_t t = pow_mod_p(a, b>>1);
 t = mul_mod_p(t,t);
 if (b % 2) {
  t = mul_mod_p(t, a);
 }
 return t;
}
