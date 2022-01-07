
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
typedef TYPE_2__ svg_device ;
typedef int fz_rect ;
typedef int fz_output ;
struct TYPE_8__ {int container_len; TYPE_1__* container; } ;
typedef TYPE_3__ fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_6__ {int user; } ;


 int fz_write_printf (int *,int *,char*,int) ;
 int * start_def (int *,TYPE_2__*) ;

__attribute__((used)) static void
svg_dev_begin_mask(fz_context *ctx, fz_device *dev, fz_rect bbox, int luminosity, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out;
 int mask = sdev->id++;

 out = start_def(ctx, sdev);
 fz_write_printf(ctx, out, "<mask id=\"ma%d\">\n", mask);

 if (dev->container_len > 0)
  dev->container[dev->container_len-1].user = mask;
}
