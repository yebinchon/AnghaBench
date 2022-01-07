
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;


 int META_OFFSETCLIPRGN ;
 int MFDRV_MetaParam2 (int ,int ,int ,int ) ;

INT MFDRV_OffsetClipRgn( PHYSDEV dev, INT x, INT y )
{
    return MFDRV_MetaParam2( dev, META_OFFSETCLIPRGN, x, y );
}
