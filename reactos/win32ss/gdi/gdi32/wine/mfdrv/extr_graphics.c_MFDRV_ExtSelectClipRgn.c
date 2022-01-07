
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT16 ;
typedef scalar_t__ INT ;
typedef int HRGN ;


 scalar_t__ ERROR ;
 int META_DELETEOBJECT ;
 int META_SELECTOBJECT ;
 int MFDRV_CreateRegion (int ,int ) ;
 scalar_t__ MFDRV_MetaParam1 (int ,int ,int) ;
 int MFDRV_RemoveHandle (int ,int) ;
 scalar_t__ NULLREGION ;
 scalar_t__ RGN_COPY ;

INT MFDRV_ExtSelectClipRgn( PHYSDEV dev, HRGN hrgn, INT mode )
{
    INT16 iRgn;
    INT ret;

    if (mode != RGN_COPY) return ERROR;
    if (!hrgn) return NULLREGION;
    iRgn = MFDRV_CreateRegion( dev, hrgn );
    if(iRgn == -1) return ERROR;
    ret = MFDRV_MetaParam1( dev, META_SELECTOBJECT, iRgn ) ? NULLREGION : ERROR;
    MFDRV_MetaParam1( dev, META_DELETEOBJECT, iRgn );
    MFDRV_RemoveHandle( dev, iRgn );
    return ret;
}
