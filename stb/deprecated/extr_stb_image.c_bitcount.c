
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bitcount(unsigned int a)
{
   a = (a & 0x55555555) + ((a >> 1) & 0x55555555);
   a = (a & 0x33333333) + ((a >> 2) & 0x33333333);
   a = (a + (a >> 4)) & 0x0f0f0f0f;
   a = (a + (a >> 8));
   a = (a + (a >> 16));
   return a & 0xff;
}
