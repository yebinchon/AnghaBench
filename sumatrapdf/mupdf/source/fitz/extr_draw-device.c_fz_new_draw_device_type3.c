
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_pixmap ;
typedef int fz_matrix ;
struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_DRAWDEV_FLAGS_TYPE3 ;
 scalar_t__ fz_new_draw_device (int *,int ,int *) ;

fz_device *
fz_new_draw_device_type3(fz_context *ctx, fz_matrix transform, fz_pixmap *dest)
{
 fz_draw_device *dev = (fz_draw_device*)fz_new_draw_device(ctx, transform, dest);
 dev->flags |= FZ_DRAWDEV_FLAGS_TYPE3;
 return (fz_device*)dev;
}
