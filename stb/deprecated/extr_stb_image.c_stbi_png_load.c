
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi ;
struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ png ;


 unsigned char* do_png (TYPE_1__*,int*,int*,int*,int) ;

__attribute__((used)) static unsigned char *stbi_png_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   png p;
   p.s = s;
   return do_png(&p, x,y,comp,req_comp);
}
