
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;


 int META_SETMAPMODE ;
 int MFDRV_MetaParam1 (int ,int ,int ) ;

INT MFDRV_SetMapMode( PHYSDEV dev, INT mode )
{
    return MFDRV_MetaParam1( dev, META_SETMAPMODE, mode );
}
