
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gdi_dc_funcs {scalar_t__ priority; } ;
struct TYPE_7__ {int hdc; } ;
struct TYPE_6__ {int hdc; struct TYPE_6__* next; struct gdi_dc_funcs const* funcs; } ;
typedef TYPE_1__* PHYSDEV ;


 TYPE_4__* CONTAINING_RECORD (TYPE_1__**,int ,int ) ;
 int WINEDC ;
 int physDev ;

void
push_dc_driver_ros(
    PHYSDEV *dev,
    PHYSDEV physdev,
    const struct gdi_dc_funcs *funcs)
{
    while ((*dev)->funcs->priority > funcs->priority) dev = &(*dev)->next;
    physdev->funcs = funcs;
    physdev->next = *dev;
    physdev->hdc = CONTAINING_RECORD(dev, WINEDC, physDev)->hdc;
    *dev = physdev;
}
