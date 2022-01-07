
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int emr ;
typedef int XFORM ;
struct TYPE_13__ {int nSize; int iType; } ;
struct TYPE_12__ {TYPE_8__ emr; int xform; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int (* pSetWorldTransform ) (TYPE_2__*,int const*) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef TYPE_3__ EMRSETWORLDTRANSFORM ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_8__*) ;
 int EMR_SETWORLDTRANSFORM ;
 int FALSE ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 int pSetWorldTransform ;
 int stub1 (TYPE_2__*,int const*) ;

BOOL EMFDRV_SetWorldTransform( PHYSDEV dev, const XFORM *xform)
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pSetWorldTransform );
    EMRSETWORLDTRANSFORM emr;

    emr.emr.iType = EMR_SETWORLDTRANSFORM;
    emr.emr.nSize = sizeof(emr);
    emr.xform = *xform;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    return next->funcs->pSetWorldTransform( next, xform );
}
