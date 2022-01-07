
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_SCALEWINDOWEXT ;
 int MFDRV_MetaParam4 (int ,int ,int ,int ,int ,int ) ;

BOOL MFDRV_ScaleWindowExtEx( PHYSDEV dev, INT xNum, INT xDenom, INT yNum, INT yDenom, SIZE *size )
{
    return MFDRV_MetaParam4( dev, META_SCALEWINDOWEXT, xNum, xDenom, yNum, yDenom );
}
