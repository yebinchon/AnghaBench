
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PHYSDEV ;


 int GDI_ERROR ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int META_SETTEXTALIGN ;
 scalar_t__ MFDRV_MetaParam2 (int ,int ,int ,int ) ;

UINT MFDRV_SetTextAlign( PHYSDEV dev, UINT align )
{
    return MFDRV_MetaParam2( dev, META_SETTEXTALIGN, HIWORD(align), LOWORD(align)) ? align : GDI_ERROR;
}
