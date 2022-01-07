
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT16 ;
typedef int INT ;
typedef int HRGN ;
typedef int HBRUSH ;
typedef int BOOL ;


 int FALSE ;
 int META_FRAMEREGION ;
 int MFDRV_CreateBrushIndirect (int ,int ) ;
 int MFDRV_CreateRegion (int ,int ) ;
 int MFDRV_MetaParam4 (int ,int ,int,int,int ,int ) ;

BOOL MFDRV_FrameRgn( PHYSDEV dev, HRGN hrgn, HBRUSH hbrush, INT x, INT y )
{
    INT16 iRgn, iBrush;
    iRgn = MFDRV_CreateRegion( dev, hrgn );
    if(iRgn == -1)
        return FALSE;
    iBrush = MFDRV_CreateBrushIndirect( dev, hbrush );
    if(!iBrush)
        return FALSE;
    return MFDRV_MetaParam4( dev, META_FRAMEREGION, iRgn, iBrush, x, y );
}
