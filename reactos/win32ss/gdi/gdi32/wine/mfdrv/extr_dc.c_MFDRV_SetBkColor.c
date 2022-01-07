
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int COLORREF ;


 int CLR_INVALID ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int META_SETBKCOLOR ;
 scalar_t__ MFDRV_MetaParam2 (int ,int ,int ,int ) ;

COLORREF MFDRV_SetBkColor( PHYSDEV dev, COLORREF color )
{
    return MFDRV_MetaParam2(dev, META_SETBKCOLOR, HIWORD(color), LOWORD(color)) ? color : CLR_INVALID;
}
