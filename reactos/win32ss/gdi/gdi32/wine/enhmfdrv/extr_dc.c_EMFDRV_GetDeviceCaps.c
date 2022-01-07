
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref_dc; } ;
typedef int PHYSDEV ;
typedef int INT ;
typedef TYPE_1__ EMFDRV_PDEVICE ;


 int GetDeviceCaps (int ,int ) ;
 TYPE_1__* get_emf_physdev (int ) ;

INT EMFDRV_GetDeviceCaps(PHYSDEV dev, INT cap)
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );

    return GetDeviceCaps( physDev->ref_dc, cap );
}
