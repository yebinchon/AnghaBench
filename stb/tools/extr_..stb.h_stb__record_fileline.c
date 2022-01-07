
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb__file ;
 int stb__line ;

int stb__record_fileline(const char *f, int n)
{
   stb__file = (char*) f;
   stb__line = n;
   return 0;
}
