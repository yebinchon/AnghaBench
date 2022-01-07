
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int emr ;
struct TYPE_22__ {scalar_t__ hPen; } ;
struct TYPE_21__ {scalar_t__ dc_pen; } ;
struct TYPE_16__ {int nSize; int iType; } ;
struct TYPE_20__ {TYPE_12__ emr; int ihObject; } ;
struct TYPE_17__ {int member_1; int member_0; } ;
struct TYPE_19__ {int member_2; TYPE_1__ member_1; int member_0; } ;
struct TYPE_18__ {int hdc; } ;
typedef TYPE_2__* PHYSDEV ;
typedef TYPE_3__ LOGPEN ;
typedef TYPE_4__ EMRSELECTOBJECT ;
typedef TYPE_5__ EMFDRV_PDEVICE ;
typedef int DWORD ;
typedef TYPE_6__ DC ;
typedef int COLORREF ;


 int CLR_INVALID ;
 scalar_t__ CreatePenIndirect (TYPE_3__*) ;
 int DC_PEN ;
 int DeleteObject (scalar_t__) ;
 int EMFDRV_CreatePenIndirect (TYPE_2__*,scalar_t__) ;
 scalar_t__ EMFDRV_WriteRecord (TYPE_2__*,TYPE_12__*) ;
 int EMR_SELECTOBJECT ;
 int GDI_hdc_using_object (scalar_t__,int ) ;
 scalar_t__ GetCurrentObject (int ,int ) ;
 scalar_t__ GetStockObject (int ) ;
 int OBJ_PEN ;
 int PS_SOLID ;
 TYPE_5__* get_emf_physdev (TYPE_2__*) ;
 TYPE_6__* get_physdev_dc (TYPE_2__*) ;

COLORREF EMFDRV_SetDCPenColor( PHYSDEV dev, COLORREF color )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );

    DC *dc = get_physdev_dc( dev );

    EMRSELECTOBJECT emr;
    DWORD index;
    LOGPEN logpen = { PS_SOLID, { 0, 0 }, color };



    if (dc->hPen != GetStockObject( DC_PEN )) return color;

    if (physDev->dc_pen) DeleteObject( physDev->dc_pen );
    if (!(physDev->dc_pen = CreatePenIndirect( &logpen ))) return CLR_INVALID;
    if (!(index = EMFDRV_CreatePenIndirect(dev, physDev->dc_pen))) return CLR_INVALID;
    GDI_hdc_using_object( physDev->dc_pen, dev->hdc );
    emr.emr.iType = EMR_SELECTOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;
    return EMFDRV_WriteRecord( dev, &emr.emr ) ? color : CLR_INVALID;
}
