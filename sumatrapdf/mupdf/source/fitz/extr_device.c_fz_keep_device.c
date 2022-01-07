
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refs; } ;
typedef TYPE_1__ fz_device ;
typedef int fz_context ;


 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int *) ;

fz_device *
fz_keep_device(fz_context *ctx, fz_device *dev)
{
 return fz_keep_imp(ctx, dev, &dev->refs);
}
