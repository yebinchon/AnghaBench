
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_ROUNDRECT ;
 int MFDRV_MetaParam6 (int ,int ,int ,int ,int ,int ,int ,int ) ;

BOOL MFDRV_RoundRect( PHYSDEV dev, INT left, INT top, INT right,
                      INT bottom, INT ell_width, INT ell_height )
{
    return MFDRV_MetaParam6(dev, META_ROUNDRECT, left, top, right, bottom,
       ell_width, ell_height);
}
