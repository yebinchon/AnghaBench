
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int x; int width; int y; int height; int scale; } ;
typedef TYPE_1__ spu_area_t ;


 TYPE_1__ spu_area_scaled (TYPE_1__) ;
 TYPE_1__ spu_area_unscaled (TYPE_1__,int ) ;

__attribute__((used)) static void SpuAreaFitInside(spu_area_t *area, const spu_area_t *boundary)
{
    spu_area_t a = spu_area_scaled(*area);

    const int i_error_x = (a.x + a.width) - boundary->width;
    if (i_error_x > 0)
        a.x -= i_error_x;
    if (a.x < 0)
        a.x = 0;

    const int i_error_y = (a.y + a.height) - boundary->height;
    if (i_error_y > 0)
        a.y -= i_error_y;
    if (a.y < 0)
        a.y = 0;

    *area = spu_area_unscaled(a, area->scale);
}
