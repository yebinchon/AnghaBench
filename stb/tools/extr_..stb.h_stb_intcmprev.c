
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__intcmpoffset ;
 int stb__intcmprev (void const*,void const*) ;

int (*stb_intcmprev(int offset))(const void *, const void *)
{
   stb__intcmpoffset = offset;
   return &stb__intcmprev;
}
