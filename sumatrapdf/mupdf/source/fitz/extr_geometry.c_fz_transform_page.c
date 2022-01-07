
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {float x1; float x0; float y1; float y0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_10__ {int f; int e; } ;
typedef TYPE_2__ fz_matrix ;


 float floorf (float) ;
 TYPE_2__ fz_pre_rotate (int ,float) ;
 int fz_scale (float,float) ;
 TYPE_1__ fz_transform_rect (TYPE_1__,TYPE_2__) ;

fz_matrix
fz_transform_page(fz_rect mediabox, float resolution, float rotate)
{
 float user_w, user_h, pixel_w, pixel_h;
 fz_rect pixel_box;
 fz_matrix matrix;


 user_w = mediabox.x1 - mediabox.x0;
 user_h = mediabox.y1 - mediabox.y0;
 pixel_w = floorf(user_w * resolution / 72 + 0.5f);
 pixel_h = floorf(user_h * resolution / 72 + 0.5f);

 matrix = fz_pre_rotate(fz_scale(pixel_w / user_w, pixel_h / user_h), rotate);


 pixel_box = fz_transform_rect(mediabox, matrix);
 matrix.e -= pixel_box.x0;
 matrix.f -= pixel_box.y0;

 return matrix;
}
