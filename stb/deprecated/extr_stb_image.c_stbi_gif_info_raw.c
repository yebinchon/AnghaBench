
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; } ;
typedef TYPE_1__ stbi_gif ;
typedef int stbi ;


 int stbi_gif_header (int *,TYPE_1__*,int*,int) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_gif_info_raw(stbi *s, int *x, int *y, int *comp)
{
   stbi_gif g;
   if (!stbi_gif_header(s, &g, comp, 1)) {
      stbi_rewind( s );
      return 0;
   }
   if (x) *x = g.w;
   if (y) *y = g.h;
   return 1;
}
