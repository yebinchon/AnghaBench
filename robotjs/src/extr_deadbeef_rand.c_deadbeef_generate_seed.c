
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int clock () ;
 int time (int *) ;

uint32_t deadbeef_generate_seed(void)
{
   uint32_t t = (uint32_t)time(((void*)0));
   uint32_t c = (uint32_t)clock();
   return (t << 24) ^ (c << 11) ^ t ^ (size_t) &c;
}
