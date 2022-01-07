
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
struct TYPE_14__ {TYPE_9__ emr; TYPE_2__ ptlOffset; } ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_11__ {void* (* pOffsetClipRgn ) (TYPE_3__*,void*,void*) ;} ;
typedef TYPE_3__* PHYSDEV ;
typedef void* INT ;
typedef TYPE_4__ EMROFFSETCLIPRGN ;


 int EMFDRV_WriteRecord (TYPE_3__*,TYPE_9__*) ;
 int EMR_OFFSETCLIPRGN ;
 void* ERROR ;
 TYPE_3__* GET_NEXT_PHYSDEV (TYPE_3__*,int ) ;
 int pOffsetClipRgn ;
 void* stub1 (TYPE_3__*,void*,void*) ;

INT EMFDRV_OffsetClipRgn( PHYSDEV dev, INT x, INT y )
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pOffsetClipRgn );
    EMROFFSETCLIPRGN emr;

    emr.emr.iType = EMR_OFFSETCLIPRGN;
    emr.emr.nSize = sizeof(emr);
    emr.ptlOffset.x = x;
    emr.ptlOffset.y = y;
    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return ERROR;
    return next->funcs->pOffsetClipRgn( next, x, y );
}
