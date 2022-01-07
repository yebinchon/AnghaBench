
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ fz_device ;
typedef int fz_context ;


 TYPE_1__* Memento_label (int ,char*) ;
 int fz_calloc (int *,int,int) ;

fz_device *
fz_new_device_of_size(fz_context *ctx, int size)
{
 fz_device *dev = Memento_label(fz_calloc(ctx, 1, size), "fz_device");
 dev->refs = 1;
 return dev;
}
