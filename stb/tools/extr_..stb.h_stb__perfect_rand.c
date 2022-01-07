
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long stb__perfect_rand(void)
{
   static unsigned long stb__rand;
   stb__rand = stb__rand * 2147001325 + 715136305;
   return 0x31415926 ^ ((stb__rand >> 16) + (stb__rand << 16));
}
