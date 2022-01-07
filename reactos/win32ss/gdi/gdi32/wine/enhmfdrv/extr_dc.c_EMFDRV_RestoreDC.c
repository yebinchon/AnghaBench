
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int emr ;
struct TYPE_21__ {void* saveLevel; } ;
struct TYPE_20__ {int restoring; } ;
struct TYPE_16__ {int nSize; int iType; } ;
struct TYPE_19__ {TYPE_14__ emr; void* iRelative; } ;
struct TYPE_18__ {TYPE_1__* funcs; } ;
struct TYPE_17__ {scalar_t__ (* pRestoreDC ) (TYPE_2__*,void*) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef void* INT ;
typedef TYPE_3__ EMRRESTOREDC ;
typedef TYPE_4__ EMFDRV_PDEVICE ;
typedef TYPE_5__ DC ;
typedef scalar_t__ BOOL ;


 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_14__*) ;
 int EMR_RESTOREDC ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 TYPE_4__* get_emf_physdev (TYPE_2__*) ;
 TYPE_5__* get_physdev_dc (TYPE_2__*) ;
 int pRestoreDC ;
 scalar_t__ stub1 (TYPE_2__*,void*) ;

BOOL EMFDRV_RestoreDC( PHYSDEV dev, INT level )
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pRestoreDC );
    EMFDRV_PDEVICE* physDev = get_emf_physdev( dev );
    DC *dc = get_physdev_dc( dev );
    EMRRESTOREDC emr;
    BOOL ret;

    emr.emr.iType = EMR_RESTOREDC;
    emr.emr.nSize = sizeof(emr);

    if (level < 0)
        emr.iRelative = level;
    else
        emr.iRelative = level - dc->saveLevel - 1;

    physDev->restoring++;
    ret = next->funcs->pRestoreDC( next, level );
    physDev->restoring--;

    if (ret) EMFDRV_WriteRecord( dev, &emr.emr );
    return ret;
}
