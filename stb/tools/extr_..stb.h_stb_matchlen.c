
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t stb_uint ;
typedef scalar_t__ stb_uchar ;



__attribute__((used)) static unsigned int stb_matchlen(stb_uchar *m1, stb_uchar *m2, stb_uint maxlen)
{
   stb_uint i;
   for (i=0; i < maxlen; ++i)
      if (m1[i] != m2[i]) return i;
   return i;
}
