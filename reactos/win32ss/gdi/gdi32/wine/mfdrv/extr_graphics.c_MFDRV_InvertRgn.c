
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT16 ;
typedef int HRGN ;
typedef int BOOL ;


 int FALSE ;
 int META_INVERTREGION ;
 int MFDRV_CreateRegion (int ,int ) ;
 int MFDRV_MetaParam1 (int ,int ,int) ;

BOOL MFDRV_InvertRgn( PHYSDEV dev, HRGN hrgn )
{
    INT16 index;
    index = MFDRV_CreateRegion( dev, hrgn );
    if(index == -1)
        return FALSE;
    return MFDRV_MetaParam1( dev, META_INVERTREGION, index );
}
