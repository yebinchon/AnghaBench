
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int emr ;
typedef int UINT ;
struct TYPE_7__ {int nSize; int iType; } ;
struct TYPE_6__ {int cur_handles; scalar_t__* handles; } ;
struct TYPE_5__ {int ihObject; TYPE_4__ emr; } ;
typedef int PHYSDEV ;
typedef int HGDIOBJ ;
typedef TYPE_1__ EMRDELETEOBJECT ;
typedef TYPE_2__ EMFDRV_PDEVICE ;
typedef int BOOL ;


 int EMFDRV_FindObject (int ,int ) ;
 int EMFDRV_WriteRecord (int ,TYPE_4__*) ;
 int EMR_DELETEOBJECT ;
 int FALSE ;
 int TRUE ;
 TYPE_2__* get_emf_physdev (int ) ;

BOOL EMFDRV_DeleteObject( PHYSDEV dev, HGDIOBJ obj )
{
    EMRDELETEOBJECT emr;
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    UINT index;
    BOOL ret = TRUE;

    if(!(index = EMFDRV_FindObject(dev, obj))) return FALSE;

    emr.emr.iType = EMR_DELETEOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;

    if(!EMFDRV_WriteRecord( dev, &emr.emr ))
        ret = FALSE;

    physDev->handles[index - 1] = 0;
    physDev->cur_handles--;
    return ret;
}
