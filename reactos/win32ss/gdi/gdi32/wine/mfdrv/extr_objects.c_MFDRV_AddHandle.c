
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT16 ;
typedef size_t UINT ;
struct TYPE_4__ {size_t handles_size; scalar_t__* handles; scalar_t__ cur_handles; TYPE_1__* mh; } ;
struct TYPE_3__ {scalar_t__ mtNoObjects; } ;
typedef scalar_t__ PHYSDEV ;
typedef TYPE_2__ METAFILEDRV_PDEVICE ;
typedef int HGDIOBJ ;


 int GetProcessHeap () ;
 scalar_t__ HANDLE_LIST_INC ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapReAlloc (int ,int ,scalar_t__*,int) ;
 scalar_t__ get_full_gdi_handle (int ) ;

UINT MFDRV_AddHandle( PHYSDEV dev, HGDIOBJ obj )
{
    METAFILEDRV_PDEVICE *physDev = (METAFILEDRV_PDEVICE *)dev;
    UINT16 index;

    for(index = 0; index < physDev->handles_size; index++)
        if(physDev->handles[index] == 0) break;
    if(index == physDev->handles_size) {
        physDev->handles_size += HANDLE_LIST_INC;
        physDev->handles = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                                       physDev->handles,
                                       physDev->handles_size * sizeof(physDev->handles[0]));
    }
    physDev->handles[index] = get_full_gdi_handle( obj );

    physDev->cur_handles++;
    if(physDev->cur_handles > physDev->mh->mtNoObjects)
        physDev->mh->mtNoObjects++;

    return index ;
}
