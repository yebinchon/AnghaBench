
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;



__attribute__((used)) static void
fz_draw_render_flags(fz_context *ctx, fz_device *devp, int set, int clear)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 dev->flags = (dev->flags | set ) & ~clear;
}
