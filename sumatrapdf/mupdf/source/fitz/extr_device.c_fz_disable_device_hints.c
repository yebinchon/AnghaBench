
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hints; } ;
typedef TYPE_1__ fz_device ;
typedef int fz_context ;



void
fz_disable_device_hints(fz_context *ctx, fz_device *dev, int hints)
{
 dev->hints &= ~hints;
}
