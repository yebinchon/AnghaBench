
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int P ;
 int pow_mod_p (int ,int ) ;

__attribute__((used)) static uint64_t
powmodp(uint64_t a, uint64_t b) {
 if (a > P)
  a%=P;
 return pow_mod_p(a,b);
}
