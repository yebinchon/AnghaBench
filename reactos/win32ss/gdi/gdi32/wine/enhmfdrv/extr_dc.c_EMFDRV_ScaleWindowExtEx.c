
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int emr ;
struct TYPE_13__ {int nSize; int iType; } ;
struct TYPE_12__ {TYPE_8__ emr; void* yDenom; void* yNum; void* xDenom; void* xNum; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int (* pScaleWindowExtEx ) (TYPE_2__*,void*,void*,void*,void*,int *) ;} ;
typedef int SIZE ;
typedef TYPE_2__* PHYSDEV ;
typedef void* INT ;
typedef TYPE_3__ EMRSCALEWINDOWEXTEX ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_8__*) ;
 int EMR_SCALEWINDOWEXTEX ;
 int FALSE ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 int pScaleWindowExtEx ;
 int stub1 (TYPE_2__*,void*,void*,void*,void*,int *) ;

BOOL EMFDRV_ScaleWindowExtEx( PHYSDEV dev, INT xNum, INT xDenom, INT yNum, INT yDenom, SIZE *size )
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pScaleWindowExtEx );
    EMRSCALEWINDOWEXTEX emr;

    emr.emr.iType = EMR_SCALEWINDOWEXTEX;
    emr.emr.nSize = sizeof(emr);
    emr.xNum = xNum;
    emr.xDenom = xDenom;
    emr.yNum = yNum;
    emr.yDenom = yDenom;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    return next->funcs->pScaleWindowExtEx( next, xNum, xDenom, yNum, yDenom, size );
}
