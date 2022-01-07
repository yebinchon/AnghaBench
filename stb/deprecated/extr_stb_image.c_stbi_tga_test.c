
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int stbi_rewind (int *) ;
 int tga_test (int *) ;

__attribute__((used)) static int stbi_tga_test(stbi *s)
{
   int res = tga_test(s);
   stbi_rewind(s);
   return res;
}
