
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int EMFDRV_Polylinegon (int ,int const*,int,int ) ;
 int EMR_POLYGON ;
 int FALSE ;

BOOL EMFDRV_Polygon( PHYSDEV dev, const POINT* pt, INT count )
{
    if(count < 2) return FALSE;
    return EMFDRV_Polylinegon( dev, pt, count, EMR_POLYGON );
}
