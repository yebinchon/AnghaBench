
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int COLORREF ;
typedef int BOOL ;


 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int META_FLOODFILL ;
 int MFDRV_MetaParam4 (int ,int ,int ,int ,int ,int ) ;

BOOL MFDRV_ExtFloodFill( PHYSDEV dev, INT x, INT y, COLORREF color, UINT fillType )
{
    return MFDRV_MetaParam4(dev,META_FLOODFILL,x,y,HIWORD(color),
       LOWORD(color));
}
