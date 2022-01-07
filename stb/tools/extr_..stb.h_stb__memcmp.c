
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int ) ;
 int stb__memcmpoffset ;
 int stb__memcmpsize ;

int stb__memcmp(const void *a, const void *b)
{
   return memcmp((char *) a + stb__memcmpoffset, (char *) b + stb__memcmpoffset, stb__memcmpsize);
}
