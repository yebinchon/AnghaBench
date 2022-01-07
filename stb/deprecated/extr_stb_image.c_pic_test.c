
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get8 (int *) ;
 int pic_is4 (int *,char*) ;

__attribute__((used)) static int pic_test(stbi *s)
{
   int i;

   if (!pic_is4(s,"\x53\x80\xF6\x34"))
      return 0;

   for(i=0;i<84;++i)
      get8(s);

   if (!pic_is4(s,"PICT"))
      return 0;

   return 1;
}
