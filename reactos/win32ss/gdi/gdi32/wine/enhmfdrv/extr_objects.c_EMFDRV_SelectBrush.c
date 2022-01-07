
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct brush_pattern {int dummy; } ;
typedef int emr ;
struct TYPE_14__ {int nSize; int iType; } ;
struct TYPE_13__ {scalar_t__ restoring; } ;
struct TYPE_12__ {int ihObject; TYPE_7__ emr; } ;
struct TYPE_11__ {int hdc; } ;
typedef TYPE_1__* PHYSDEV ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_2__ EMRSELECTOBJECT ;
typedef TYPE_3__ EMFDRV_PDEVICE ;
typedef int DWORD ;


 int DC_BRUSH ;
 int EMFDRV_CreateBrushIndirect (TYPE_1__*,scalar_t__) ;
 int EMFDRV_FindObject (TYPE_1__*,scalar_t__) ;
 scalar_t__ EMFDRV_WriteRecord (TYPE_1__*,TYPE_7__*) ;
 int EMR_SELECTOBJECT ;
 int GDI_hdc_using_object (scalar_t__,int ) ;
 scalar_t__ GetStockObject (int) ;
 int WHITE_BRUSH ;
 TYPE_3__* get_emf_physdev (TYPE_1__*) ;

HBRUSH EMFDRV_SelectBrush( PHYSDEV dev, HBRUSH hBrush, const struct brush_pattern *pattern )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    EMRSELECTOBJECT emr;
    DWORD index;
    int i;

    if (physDev->restoring) return hBrush;






    for (i = WHITE_BRUSH; i <= DC_BRUSH; i++)
    {
        if (hBrush == GetStockObject(i))
        {
            index = i | 0x80000000;
            goto found;
        }
    }
    if((index = EMFDRV_FindObject(dev, hBrush)) != 0)
        goto found;

    if (!(index = EMFDRV_CreateBrushIndirect(dev, hBrush ))) return 0;
    GDI_hdc_using_object(hBrush, dev->hdc);

 found:
    emr.emr.iType = EMR_SELECTOBJECT;
    emr.emr.nSize = sizeof(emr);
    emr.ihObject = index;
    return EMFDRV_WriteRecord( dev, &emr.emr ) ? hBrush : 0;
}
