
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ stbi_uc ;
typedef int stbi ;


 scalar_t__ get8 (int *) ;

__attribute__((used)) static int pic_is4(stbi *s,const char *str)
{
   int i;
   for (i=0; i<4; ++i)
      if (get8(s) != (stbi_uc)str[i])
         return 0;

   return 1;
}
