
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ layers; int id; int * save_id; int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_output ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*) ;

__attribute__((used)) static void
svg_dev_close_device(fz_context *ctx, fz_device *dev)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;

 while (sdev->layers > 0)
 {
  fz_write_printf(ctx, out, "</g>\n");
  sdev->layers--;
 }

 if (sdev->save_id)
  *sdev->save_id = sdev->id;

 fz_write_printf(ctx, out, "</g>\n");
 fz_write_printf(ctx, out, "</svg>\n");
}
