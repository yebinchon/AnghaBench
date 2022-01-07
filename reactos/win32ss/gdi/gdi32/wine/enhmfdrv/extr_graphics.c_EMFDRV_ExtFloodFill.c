
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int emr ;
typedef int UINT ;
struct TYPE_6__ {int nSize; int iType; } ;
struct TYPE_4__ {void* y; void* x; } ;
struct TYPE_5__ {TYPE_3__ emr; int iMode; int crColor; TYPE_1__ ptlStart; } ;
typedef int PHYSDEV ;
typedef void* INT ;
typedef TYPE_2__ EMREXTFLOODFILL ;
typedef int COLORREF ;
typedef int BOOL ;


 int EMFDRV_WriteRecord (int ,TYPE_3__*) ;
 int EMR_EXTFLOODFILL ;

BOOL EMFDRV_ExtFloodFill( PHYSDEV dev, INT x, INT y, COLORREF color, UINT fillType )
{
    EMREXTFLOODFILL emr;

    emr.emr.iType = EMR_EXTFLOODFILL;
    emr.emr.nSize = sizeof(emr);
    emr.ptlStart.x = x;
    emr.ptlStart.y = y;
    emr.crColor = color;
    emr.iMode = fillType;

    return EMFDRV_WriteRecord( dev, &emr.emr );
}
