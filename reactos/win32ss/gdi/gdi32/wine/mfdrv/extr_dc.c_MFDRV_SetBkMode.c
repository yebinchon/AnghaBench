
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int PHYSDEV ;
typedef scalar_t__ INT ;


 int META_SETBKMODE ;
 scalar_t__ MFDRV_MetaParam1 (int ,int ,int ) ;

INT MFDRV_SetBkMode( PHYSDEV dev, INT mode )
{
    return MFDRV_MetaParam1( dev, META_SETBKMODE, (WORD)mode) ? mode : 0;
}
