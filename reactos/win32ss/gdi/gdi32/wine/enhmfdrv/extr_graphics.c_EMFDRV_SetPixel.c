
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int emr ;
struct TYPE_9__ {int nSize; int iType; } ;
struct TYPE_6__ {void* y; void* x; } ;
struct TYPE_8__ {int crColor; TYPE_4__ emr; TYPE_1__ ptlPixel; } ;
struct TYPE_7__ {void* bottom; void* top; void* right; void* left; } ;
typedef TYPE_2__ RECTL ;
typedef int PHYSDEV ;
typedef void* INT ;
typedef TYPE_3__ EMRSETPIXELV ;
typedef int COLORREF ;


 int EMFDRV_UpdateBBox (int ,TYPE_2__*) ;
 scalar_t__ EMFDRV_WriteRecord (int ,TYPE_4__*) ;
 int EMR_SETPIXELV ;

COLORREF EMFDRV_SetPixel( PHYSDEV dev, INT x, INT y, COLORREF color )
{
    EMRSETPIXELV emr;

    emr.emr.iType = EMR_SETPIXELV;
    emr.emr.nSize = sizeof(emr);
    emr.ptlPixel.x = x;
    emr.ptlPixel.y = y;
    emr.crColor = color;

    if (EMFDRV_WriteRecord( dev, &emr.emr )) {
        RECTL bounds;
        bounds.left = bounds.right = x;
        bounds.top = bounds.bottom = y;
        EMFDRV_UpdateBBox( dev, &bounds );
        return color;
    }
    return -1;
}
