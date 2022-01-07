
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int emr ;
struct TYPE_15__ {int nSize; int iType; } ;
struct TYPE_12__ {void* y; void* x; } ;
struct TYPE_14__ {TYPE_9__ emr; TYPE_2__ ptlOrigin; } ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_11__ {int (* pSetViewportOrgEx ) (TYPE_3__*,void*,void*,int *) ;} ;
typedef int POINT ;
typedef TYPE_3__* PHYSDEV ;
typedef void* INT ;
typedef TYPE_4__ EMRSETVIEWPORTORGEX ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (TYPE_3__*,TYPE_9__*) ;
 int EMR_SETVIEWPORTORGEX ;
 int FALSE ;
 TYPE_3__* GET_NEXT_PHYSDEV (TYPE_3__*,int ) ;
 int pSetViewportOrgEx ;
 int stub1 (TYPE_3__*,void*,void*,int *) ;

BOOL EMFDRV_SetViewportOrgEx( PHYSDEV dev, INT x, INT y, POINT *pt )
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pSetViewportOrgEx );
    EMRSETVIEWPORTORGEX emr;

    emr.emr.iType = EMR_SETVIEWPORTORGEX;
    emr.emr.nSize = sizeof(emr);
    emr.ptlOrigin.x = x;
    emr.ptlOrigin.y = y;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    return next->funcs->pSetViewportOrgEx( next, x, y, pt );
}
