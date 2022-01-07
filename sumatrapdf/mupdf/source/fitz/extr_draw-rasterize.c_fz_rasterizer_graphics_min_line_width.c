
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float min_line_width; } ;
struct TYPE_5__ {TYPE_1__ aa; } ;
typedef TYPE_2__ fz_rasterizer ;



float
fz_rasterizer_graphics_min_line_width(fz_rasterizer *ras)
{
 return ras->aa.min_line_width;
}
