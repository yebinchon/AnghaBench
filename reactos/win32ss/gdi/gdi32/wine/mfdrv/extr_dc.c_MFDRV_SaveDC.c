
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;


 int META_SAVEDC ;
 int MFDRV_MetaParam0 (int ,int ) ;

INT MFDRV_SaveDC( PHYSDEV dev )
{
    return MFDRV_MetaParam0( dev, META_SAVEDC );
}
