
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT16 ;
typedef int HRGN ;
typedef int HBRUSH ;
typedef int BOOL ;


 int FALSE ;
 int META_FILLREGION ;
 int MFDRV_CreateBrushIndirect (int ,int ) ;
 int MFDRV_CreateRegion (int ,int ) ;
 int MFDRV_MetaParam2 (int ,int ,int,int) ;

BOOL MFDRV_FillRgn( PHYSDEV dev, HRGN hrgn, HBRUSH hbrush )
{
    INT16 iRgn, iBrush;
    iRgn = MFDRV_CreateRegion( dev, hrgn );
    if(iRgn == -1)
        return FALSE;
    iBrush = MFDRV_CreateBrushIndirect( dev, hbrush );
    if(!iBrush)
        return FALSE;
    return MFDRV_MetaParam2( dev, META_FILLREGION, iRgn, iBrush );
}
