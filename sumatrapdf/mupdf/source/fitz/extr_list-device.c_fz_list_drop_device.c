
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; int stroke; int colorspace; } ;
typedef TYPE_1__ fz_list_device ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_path (int *,int ) ;
 int fz_drop_stroke_state (int *,int ) ;

__attribute__((used)) static void
fz_list_drop_device(fz_context *ctx, fz_device *dev)
{
 fz_list_device *writer = (fz_list_device *)dev;

 fz_drop_colorspace(ctx, writer->colorspace);
 fz_drop_stroke_state(ctx, writer->stroke);
 fz_drop_path(ctx, writer->path);
}
