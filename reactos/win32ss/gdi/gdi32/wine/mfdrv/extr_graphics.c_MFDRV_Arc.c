
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_ARC ;
 int MFDRV_MetaParam8 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

BOOL MFDRV_Arc( PHYSDEV dev, INT left, INT top, INT right, INT bottom,
                INT xstart, INT ystart, INT xend, INT yend )
{
     return MFDRV_MetaParam8(dev, META_ARC, left, top, right, bottom,
        xstart, ystart, xend, yend);
}
