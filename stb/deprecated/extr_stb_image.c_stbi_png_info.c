
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi ;
struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ png ;


 int stbi_png_info_raw (TYPE_1__*,int*,int*,int*) ;

__attribute__((used)) static int stbi_png_info(stbi *s, int *x, int *y, int *comp)
{
   png p;
   p.s = s;
   return stbi_png_info_raw(&p, x, y, comp);
}
