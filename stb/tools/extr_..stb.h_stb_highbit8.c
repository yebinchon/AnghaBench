
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_log2_ceil (unsigned int) ;

int stb_highbit8(unsigned int n)
{
   return stb_log2_ceil(n&255);
}
