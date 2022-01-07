
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void nbt_swap(unsigned char *ptr, int len)
{
   int i;
   for (i=0; i < (len>>1); ++i) {
      unsigned char t = ptr[i];
      ptr[i] = ptr[len-1-i];
      ptr[len-1-i] = t;
   }
}
