
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbi__uint8 ;
typedef scalar_t__ stbi__uint32 ;
struct TYPE_4__ {scalar_t__ img_x; scalar_t__ img_y; } ;
typedef TYPE_1__ stbi ;
struct TYPE_5__ {int* out; TYPE_1__* s; } ;
typedef TYPE_2__ png ;


 int assert (int) ;

__attribute__((used)) static int compute_transparency(png *z, stbi__uint8 tc[3], int out_n)
{
   stbi *s = z->s;
   stbi__uint32 i, pixel_count = s->img_x * s->img_y;
   stbi__uint8 *p = z->out;



   assert(out_n == 2 || out_n == 4);

   if (out_n == 2) {
      for (i=0; i < pixel_count; ++i) {
         p[1] = (p[0] == tc[0] ? 0 : 255);
         p += 2;
      }
   } else {
      for (i=0; i < pixel_count; ++i) {
         if (p[0] == tc[0] && p[1] == tc[1] && p[2] == tc[2])
            p[3] = 0;
         p += 4;
      }
   }
   return 1;
}
