
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int COLORREF ;


 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int META_SETPIXEL ;
 int MFDRV_MetaParam4 (int ,int ,int ,int ,int ,int ) ;

COLORREF MFDRV_SetPixel( PHYSDEV dev, INT x, INT y, COLORREF color )
{
    return MFDRV_MetaParam4(dev, META_SETPIXEL, x, y,HIWORD(color),
       LOWORD(color));
}
