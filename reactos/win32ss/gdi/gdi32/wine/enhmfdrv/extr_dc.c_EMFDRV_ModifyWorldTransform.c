
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
struct TYPE_12__ {TYPE_8__ emr; int iMode; int xform; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int (* pModifyWorldTransform ) (TYPE_2__*,int const*,int ) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef TYPE_3__ EMRMODIFYWORLDTRANSFORM ;
typedef int DWORD ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_8__*) ;
 int EMR_MODIFYWORLDTRANSFORM ;
 int FALSE ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 int pModifyWorldTransform ;
 int stub1 (TYPE_2__*,int const*,int ) ;

BOOL EMFDRV_ModifyWorldTransform( PHYSDEV dev, const XFORM *xform, DWORD mode)
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pModifyWorldTransform );
    EMRMODIFYWORLDTRANSFORM emr;

    emr.emr.iType = EMR_MODIFYWORLDTRANSFORM;
    emr.emr.nSize = sizeof(emr);
    emr.xform = *xform;
    emr.iMode = mode;

    if (!EMFDRV_WriteRecord( dev, &emr.emr )) return FALSE;
    return next->funcs->pModifyWorldTransform( next, xform, mode );
}
