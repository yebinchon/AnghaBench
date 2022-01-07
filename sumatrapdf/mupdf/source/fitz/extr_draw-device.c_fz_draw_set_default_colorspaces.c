
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_cs; } ;
typedef TYPE_1__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_default_colorspaces ;
typedef int fz_context ;


 int fz_drop_default_colorspaces (int *,int ) ;
 int fz_keep_default_colorspaces (int *,int *) ;

__attribute__((used)) static void
fz_draw_set_default_colorspaces(fz_context *ctx, fz_device *devp, fz_default_colorspaces *default_cs)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_drop_default_colorspaces(ctx, dev->default_cs);
 dev->default_cs = fz_keep_default_colorspaces(ctx, default_cs);
}
