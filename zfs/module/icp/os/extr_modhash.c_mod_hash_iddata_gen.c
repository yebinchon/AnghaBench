
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;



uint_t
mod_hash_iddata_gen(size_t nchains)
{
 uint_t kval, i, prime;





 kval = (nchains % 2 == 0) ? nchains + 1 : nchains + 2;

 for (;;) {
  prime = 1;
  for (i = 3; i * i <= kval; i += 2) {
   if (kval % i == 0)
    prime = 0;
  }
  if (prime == 1)
   break;
  kval += 2;
 }
 return (kval);
}
