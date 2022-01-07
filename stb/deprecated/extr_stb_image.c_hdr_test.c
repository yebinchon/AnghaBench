
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 char const get8 (int *) ;

__attribute__((used)) static int hdr_test(stbi *s)
{
   const char *signature = "#?RADIANCE\n";
   int i;
   for (i=0; signature[i]; ++i)
      if (get8(s) != signature[i])
         return 0;
   return 1;
}
