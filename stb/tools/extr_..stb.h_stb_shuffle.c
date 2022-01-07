
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_randLCG () ;
 unsigned int stb_srandLCG (unsigned int) ;
 int stb_swap (char*,char*,size_t) ;

void stb_shuffle(void *p, size_t n, size_t sz, unsigned int seed)
{
   char *a;
   unsigned int old_seed;
   int i;
   if (seed)
      old_seed = stb_srandLCG(seed);
   a = (char *) p + (n-1) * sz;

   for (i=(int) n; i > 1; --i) {
      int j = stb_randLCG() % i;
      stb_swap(a, (char *) p + j * sz, sz);
      a -= sz;
   }
   if (seed)
      stb_srandLCG(old_seed);
}
