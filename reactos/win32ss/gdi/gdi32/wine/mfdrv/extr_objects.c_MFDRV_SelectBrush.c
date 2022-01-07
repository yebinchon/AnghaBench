
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct brush_pattern {int dummy; } ;
struct TYPE_6__ {int hdc; } ;
typedef TYPE_1__* PHYSDEV ;
typedef scalar_t__ INT16 ;
typedef int HBRUSH ;


 int GDI_hdc_using_object (int ,int ) ;
 scalar_t__ MFDRV_CreateBrushIndirect (TYPE_1__*,int ) ;
 scalar_t__ MFDRV_FindObject (TYPE_1__*,int ) ;
 scalar_t__ MFDRV_SelectObject (TYPE_1__*,scalar_t__) ;

HBRUSH MFDRV_SelectBrush( PHYSDEV dev, HBRUSH hbrush, const struct brush_pattern *pattern )
{
    INT16 index;

    index = MFDRV_FindObject(dev, hbrush);
    if( index < 0 )
    {
        index = MFDRV_CreateBrushIndirect( dev, hbrush );
        if( index < 0 )
            return 0;
        GDI_hdc_using_object(hbrush, dev->hdc);
    }
    return MFDRV_SelectObject( dev, index ) ? hbrush : 0;
}
