
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_ELLIPSE ;
 int MFDRV_MetaParam4 (int ,int ,int ,int ,int ,int ) ;

BOOL MFDRV_Ellipse( PHYSDEV dev, INT left, INT top, INT right, INT bottom )
{
    return MFDRV_MetaParam4(dev, META_ELLIPSE, left, top, right, bottom);
}
