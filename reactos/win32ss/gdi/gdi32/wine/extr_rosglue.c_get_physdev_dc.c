
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINEDC ;
struct TYPE_4__ {struct TYPE_4__* next; int * funcs; } ;
typedef TYPE_1__* PHYSDEV ;


 int DummyPhysDevFuncs ;
 int * get_nulldrv_dc (TYPE_1__*) ;

WINEDC* get_physdev_dc( PHYSDEV dev )
{
    while (dev->funcs != &DummyPhysDevFuncs)
        dev = dev->next;
    return get_nulldrv_dc( dev );
}
