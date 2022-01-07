
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
struct TYPE_21__ {int physDev; } ;
struct TYPE_20__ {scalar_t__ path; int pathdev; } ;
struct TYPE_16__ {int nSize; int iType; } ;
struct TYPE_19__ {TYPE_14__ emr; } ;
struct TYPE_18__ {TYPE_1__* funcs; } ;
struct TYPE_17__ {int (* pBeginPath ) (TYPE_2__*) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef TYPE_3__ EMRBEGINPATH ;
typedef TYPE_4__ EMFDRV_PDEVICE ;
typedef TYPE_5__ DC ;
typedef scalar_t__ BOOL ;


 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_14__*) ;
 int EMR_BEGINPATH ;
 scalar_t__ FALSE ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 scalar_t__ TRUE ;
 int emfpath_driver ;
 TYPE_4__* get_emf_physdev (TYPE_2__*) ;
 TYPE_5__* get_physdev_dc (TYPE_2__*) ;
 int pBeginPath ;
 int push_dc_driver (int *,int *,int *) ;
 int stub1 (TYPE_2__*) ;

BOOL EMFDRV_BeginPath( PHYSDEV dev )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pBeginPath );
    EMRBEGINPATH emr;
    DC *dc = get_physdev_dc( dev );

    emr.emr.iType = EMR_BEGINPATH;
    emr.emr.nSize = sizeof(emr);

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    if (physDev->path) return TRUE;

    if (!next->funcs->pBeginPath( next )) return FALSE;
    push_dc_driver( &dc->physDev, &physDev->pathdev, &emfpath_driver );
    physDev->path = TRUE;
    return TRUE;
}
