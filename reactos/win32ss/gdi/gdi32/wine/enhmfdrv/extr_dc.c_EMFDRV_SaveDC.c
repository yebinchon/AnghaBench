
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
struct TYPE_12__ {TYPE_8__ emr; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {scalar_t__ (* pSaveDC ) (TYPE_2__*) ;} ;
typedef TYPE_2__* PHYSDEV ;
typedef scalar_t__ INT ;
typedef TYPE_3__ EMRSAVEDC ;


 int EMFDRV_WriteRecord (TYPE_2__*,TYPE_8__*) ;
 int EMR_SAVEDC ;
 TYPE_2__* GET_NEXT_PHYSDEV (TYPE_2__*,int ) ;
 int pSaveDC ;
 scalar_t__ stub1 (TYPE_2__*) ;

INT EMFDRV_SaveDC( PHYSDEV dev )
{
    PHYSDEV next = GET_NEXT_PHYSDEV( dev, pSaveDC );
    INT ret = next->funcs->pSaveDC( next );

    if (ret)
    {
        EMRSAVEDC emr;
        emr.emr.iType = EMR_SAVEDC;
        emr.emr.nSize = sizeof(emr);
        EMFDRV_WriteRecord( dev, &emr.emr );
    }
    return ret;
}
