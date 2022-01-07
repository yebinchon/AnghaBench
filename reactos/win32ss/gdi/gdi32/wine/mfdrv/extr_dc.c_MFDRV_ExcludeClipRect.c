
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;


 int META_EXCLUDECLIPRECT ;
 int MFDRV_MetaParam4 (int ,int ,int ,int ,int ,int ) ;

INT MFDRV_ExcludeClipRect( PHYSDEV dev, INT left, INT top, INT right, INT bottom )
{
    return MFDRV_MetaParam4( dev, META_EXCLUDECLIPRECT, left, top, right, bottom );
}
