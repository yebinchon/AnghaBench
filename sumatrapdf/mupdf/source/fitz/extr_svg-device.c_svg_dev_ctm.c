
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_output ;
struct TYPE_6__ {float a; float d; int f; int e; int c; int b; } ;
typedef TYPE_2__ fz_matrix ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,float,int ,int ,float,int ,int ) ;

__attribute__((used)) static void
svg_dev_ctm(fz_context *ctx, svg_device *sdev, fz_matrix ctm)
{
 fz_output *out = sdev->out;

 if (ctm.a != 1.0f || ctm.b != 0 || ctm.c != 0 || ctm.d != 1.0f || ctm.e != 0 || ctm.f != 0)
 {
  fz_write_printf(ctx, out, " transform=\"matrix(%g,%g,%g,%g,%g,%g)\"",
   ctm.a, ctm.b, ctm.c, ctm.d, ctm.e, ctm.f);
 }
}
