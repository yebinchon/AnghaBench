
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_MOVETO ;
 int MFDRV_MetaParam2 (int ,int ,int ,int ) ;

BOOL MFDRV_MoveTo(PHYSDEV dev, INT x, INT y)
{
    return MFDRV_MetaParam2(dev,META_MOVETO,x,y);
}
