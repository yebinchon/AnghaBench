
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * out; } ;
typedef TYPE_2__ svg_device ;
typedef int fz_output ;
struct TYPE_8__ {int container_len; TYPE_1__* container; } ;
typedef TYPE_3__ fz_device ;
typedef int fz_context ;
struct TYPE_6__ {int user; } ;


 int * end_def (int *,TYPE_2__*) ;
 int fz_write_printf (int *,int *,char*,...) ;

__attribute__((used)) static void
svg_dev_end_mask(fz_context *ctx, fz_device *dev)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;
 int mask = 0;

 if (dev->container_len > 0)
  mask = dev->container[dev->container_len-1].user;

 fz_write_printf(ctx, out, "\"/>\n</mask>\n");
 out = end_def(ctx, sdev);
 fz_write_printf(ctx, out, "<g mask=\"url(#ma%d)\">\n", mask);
}
