
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_OFFSETWINDOWORG ;
 int MFDRV_MetaParam2 (int ,int ,int ,int ) ;

BOOL MFDRV_OffsetWindowOrgEx( PHYSDEV dev, INT x, INT y, POINT *pt )
{
    return MFDRV_MetaParam2( dev, META_OFFSETWINDOWORG, x, y );
}
