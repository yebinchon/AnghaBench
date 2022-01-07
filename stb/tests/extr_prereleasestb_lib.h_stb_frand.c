
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double stb_rand () ;

double stb_frand(void)
{
   return stb_rand() / ((double) (1 << 16) * (1 << 16));
}
