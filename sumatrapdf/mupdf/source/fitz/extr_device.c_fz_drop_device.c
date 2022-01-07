
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* container; int (* drop_device ) (int *,TYPE_1__*) ;scalar_t__ close_device; int refs; } ;
typedef TYPE_1__ fz_device ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*) ;
 int stub1 (int *,TYPE_1__*) ;

void
fz_drop_device(fz_context *ctx, fz_device *dev)
{
 if (fz_drop_imp(ctx, dev, &dev->refs))
 {
  if (dev->close_device)
   fz_warn(ctx, "dropping unclosed device");
  if (dev->drop_device)
   dev->drop_device(ctx, dev);
  fz_free(ctx, dev->container);
  fz_free(ctx, dev);
 }
}
