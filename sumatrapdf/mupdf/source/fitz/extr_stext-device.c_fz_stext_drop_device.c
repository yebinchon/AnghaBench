
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lasttext; } ;
typedef TYPE_1__ fz_stext_device ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_drop_text (int *,int ) ;

__attribute__((used)) static void
fz_stext_drop_device(fz_context *ctx, fz_device *dev)
{
 fz_stext_device *tdev = (fz_stext_device*)dev;
 fz_drop_text(ctx, tdev->lasttext);
}
