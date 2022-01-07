
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int EMFDRV_ArcChordPie (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int EMR_ARC ;

BOOL EMFDRV_Arc( PHYSDEV dev, INT left, INT top, INT right, INT bottom,
                 INT xstart, INT ystart, INT xend, INT yend )
{
    return EMFDRV_ArcChordPie( dev, left, top, right, bottom, xstart, ystart,
          xend, yend, EMR_ARC );
}
