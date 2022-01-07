
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {size_t handles_size; int cur_handles; scalar_t__* handles; } ;
typedef scalar_t__ PHYSDEV ;
typedef TYPE_1__ METAFILEDRV_PDEVICE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL MFDRV_RemoveHandle( PHYSDEV dev, UINT index )
{
    METAFILEDRV_PDEVICE *physDev = (METAFILEDRV_PDEVICE *)dev;
    BOOL ret = FALSE;

    if (index < physDev->handles_size && physDev->handles[index])
    {
        physDev->handles[index] = 0;
        physDev->cur_handles--;
        ret = TRUE;
    }
    return ret;
}
