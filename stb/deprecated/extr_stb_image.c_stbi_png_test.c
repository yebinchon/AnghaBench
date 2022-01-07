
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int check_png_header (int *) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_png_test(stbi *s)
{
   int r;
   r = check_png_header(s);
   stbi_rewind(s);
   return r;
}
