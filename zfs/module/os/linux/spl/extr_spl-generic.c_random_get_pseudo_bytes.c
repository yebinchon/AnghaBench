
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int ASSERT (int *) ;
 int MIN (size_t,int) ;
 int * get_cpu_var (int ) ;
 int put_cpu_var (int ) ;
 int spl_pseudo_entropy ;
 int spl_rand_next (int *) ;

int
random_get_pseudo_bytes(uint8_t *ptr, size_t len)
{
 uint64_t *xp, s[2];

 ASSERT(ptr);

 xp = get_cpu_var(spl_pseudo_entropy);

 s[0] = xp[0];
 s[1] = xp[1];

 while (len) {
  union {
   uint64_t ui64;
   uint8_t byte[sizeof (uint64_t)];
  }entropy;
  int i = MIN(len, sizeof (uint64_t));

  len -= i;
  entropy.ui64 = spl_rand_next(s);

  while (i--)
   *ptr++ = entropy.byte[i];
 }

 xp[0] = s[0];
 xp[1] = s[1];

 put_cpu_var(spl_pseudo_entropy);

 return (0);
}
