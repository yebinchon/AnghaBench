
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbi__uint8 ;
typedef scalar_t__ stbi__uint32 ;
struct TYPE_4__ {scalar_t__ img_x; scalar_t__ img_y; int img_out_n; } ;
typedef TYPE_1__ stbi ;
struct TYPE_5__ {int* out; TYPE_1__* s; } ;
typedef TYPE_2__ png ;


 int assert (int) ;
 scalar_t__ stbi_unpremultiply_on_load ;

__attribute__((used)) static void stbi_de_iphone(png *z)
{
   stbi *s = z->s;
   stbi__uint32 i, pixel_count = s->img_x * s->img_y;
   stbi__uint8 *p = z->out;

   if (s->img_out_n == 3) {
      for (i=0; i < pixel_count; ++i) {
         stbi__uint8 t = p[0];
         p[0] = p[2];
         p[2] = t;
         p += 3;
      }
   } else {
      assert(s->img_out_n == 4);
      if (stbi_unpremultiply_on_load) {

         for (i=0; i < pixel_count; ++i) {
            stbi__uint8 a = p[3];
            stbi__uint8 t = p[0];
            if (a) {
               p[0] = p[2] * 255 / a;
               p[1] = p[1] * 255 / a;
               p[2] = t * 255 / a;
            } else {
               p[0] = p[2];
               p[2] = t;
            }
            p += 4;
         }
      } else {

         for (i=0; i < pixel_count; ++i) {
            stbi__uint8 t = p[0];
            p[0] = p[2];
            p[2] = t;
            p += 4;
         }
      }
   }
}
