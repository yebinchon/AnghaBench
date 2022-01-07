
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int META_SETVIEWPORTEXT ;
 int MFDRV_MetaParam2 (int ,int ,int ,int ) ;

BOOL MFDRV_SetViewportExtEx( PHYSDEV dev, INT x, INT y, SIZE *size )
{
    return MFDRV_MetaParam2( dev, META_SETVIEWPORTEXT, x, y );
}
