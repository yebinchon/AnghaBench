
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float min_line_width; } ;
struct TYPE_5__ {TYPE_1__ aa; } ;
typedef TYPE_2__ fz_context ;



void
fz_set_graphics_min_line_width(fz_context *ctx, float min_line_width)
{
 ctx->aa.min_line_width = min_line_width;
}
