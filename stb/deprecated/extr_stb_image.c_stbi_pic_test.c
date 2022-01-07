
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int pic_test (int *) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_pic_test(stbi *s)
{
   int r = pic_test(s);
   stbi_rewind(s);
   return r;
}
