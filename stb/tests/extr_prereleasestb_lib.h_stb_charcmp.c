
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__charcmpoffset ;
 int stb__ucharcmp (void const*,void const*) ;

int (*stb_charcmp(int offset))(const void *, const void *)
{
   stb__charcmpoffset = offset;
   return &stb__ucharcmp;
}
