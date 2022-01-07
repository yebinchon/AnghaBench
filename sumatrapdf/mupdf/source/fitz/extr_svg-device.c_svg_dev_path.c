
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_path ;
typedef int fz_context ;


 int fz_walk_path (int *,int const*,int *,int ) ;
 int fz_write_printf (int *,int ,char*) ;
 int svg_path_walker ;

__attribute__((used)) static void
svg_dev_path(fz_context *ctx, svg_device *sdev, const fz_path *path)
{
 fz_write_printf(ctx, sdev->out, " d=\"");
 fz_walk_path(ctx, path, &svg_path_walker, sdev->out);
 fz_write_printf(ctx, sdev->out, "\"");
}
