
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__memcmp (void const*,void const*) ;
 int stb__memcmpoffset ;
 int stb__memcmpsize ;

int (*stb_memcmp(int offset, int size))(const void *, const void *)
{
   stb__memcmpoffset = offset;
   stb__memcmpsize = size;
   return &stb__memcmp;
}
