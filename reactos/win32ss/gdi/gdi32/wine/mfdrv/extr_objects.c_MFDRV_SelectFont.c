
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int font ;
typedef int UINT ;
struct TYPE_6__ {int hdc; } ;
typedef TYPE_1__* PHYSDEV ;
typedef int LOGFONTW ;
typedef scalar_t__ INT16 ;
typedef int HFONT ;


 int GDI_hdc_using_object (int ,int ) ;
 int GGO_BITMAP ;
 int GetObjectW (int ,int,int *) ;
 scalar_t__ MFDRV_CreateFontIndirect (TYPE_1__*,int ,int *) ;
 scalar_t__ MFDRV_FindObject (TYPE_1__*,int ) ;
 scalar_t__ MFDRV_SelectObject (TYPE_1__*,scalar_t__) ;

HFONT MFDRV_SelectFont( PHYSDEV dev, HFONT hfont, UINT *aa_flags )
{
    LOGFONTW font;
    INT16 index;

    *aa_flags = GGO_BITMAP;
    index = MFDRV_FindObject(dev, hfont);
    if( index < 0 )
    {
        if (!GetObjectW( hfont, sizeof(font), &font ))
            return 0;
        index = MFDRV_CreateFontIndirect(dev, hfont, &font);
        if( index < 0 )
            return 0;
        GDI_hdc_using_object(hfont, dev->hdc);
    }
    return MFDRV_SelectObject( dev, index ) ? hfont : 0;
}
