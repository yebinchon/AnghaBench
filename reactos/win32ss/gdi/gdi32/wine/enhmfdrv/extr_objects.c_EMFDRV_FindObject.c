
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t handles_size; scalar_t__* handles; } ;
typedef int PHYSDEV ;
typedef scalar_t__ HGDIOBJ ;
typedef TYPE_1__ EMFDRV_PDEVICE ;


 TYPE_1__* get_emf_physdev (int ) ;

__attribute__((used)) static UINT EMFDRV_FindObject( PHYSDEV dev, HGDIOBJ obj )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    UINT index;

    for(index = 0; index < physDev->handles_size; index++)
        if(physDev->handles[index] == obj) break;

    if(index == physDev->handles_size) return 0;

    return index + 1;
}
