
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
struct TYPE_12__ {void* cy; void* cx; } ;
struct TYPE_14__ {TYPE_9__ emr; TYPE_2__ szlExtent; } ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_11__ {int (* pSetWindowExtEx ) (TYPE_3__*,void*,void*,int *) ;} ;
typedef int SIZE ;
typedef TYPE_3__* PHYSDEV ;
typedef void* INT ;
typedef TYPE_4__ EMRSETWINDOWEXTEX ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (TYPE_3__*,TYPE_9__*) ;
 int EMR_SETWINDOWEXTEX ;
 int FALSE ;
 TYPE_3__* GET_NEXT_PHYSDEV (TYPE_3__*,int ) ;
 int pSetWindowExtEx ;
 int stub1 (TYPE_3__*,void*,void*,int *) ;

BOOL EMFDRV_SetWindowExtEx( PHYSDEV dev, INT cx, INT cy, SIZE *size )
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pSetWindowExtEx );
    EMRSETWINDOWEXTEX emr;

    emr.emr.iType = EMR_SETWINDOWEXTEX;
    emr.emr.nSize = sizeof(emr);
    emr.szlExtent.cx = cx;
    emr.szlExtent.cy = cy;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    return next->funcs->pSetWindowExtEx( next, cx, cy, size );
}
