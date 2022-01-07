
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int image; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_8__ {int x0; int y0; int x1; int y1; } ;
struct TYPE_9__ {TYPE_2__ u; TYPE_3__ bbox; } ;
typedef TYPE_4__ fz_stext_block ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_image_as_data_uri (int *,int *,int ) ;
 int fz_write_printf (int *,int *,char*,int,int,int,int) ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
fz_print_stext_image_as_html(fz_context *ctx, fz_output *out, fz_stext_block *block)
{
 int x = block->bbox.x0;
 int y = block->bbox.y0;
 int w = block->bbox.x1 - block->bbox.x0;
 int h = block->bbox.y1 - block->bbox.y0;

 fz_write_printf(ctx, out, "<img style=\"position:absolute;top:%dpt;left:%dpt;width:%dpt;height:%dpt\" src=\"", y, x, w, h);
 fz_write_image_as_data_uri(ctx, out, block->u.i.image);
 fz_write_string(ctx, out, "\">\n");
}
