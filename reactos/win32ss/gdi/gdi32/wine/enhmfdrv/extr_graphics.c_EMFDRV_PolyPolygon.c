
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int BOOL ;


 int EMFDRV_PolyPolylinegon (int ,int const*,int const*,int ,int ) ;
 int EMR_POLYPOLYGON ;

BOOL EMFDRV_PolyPolygon( PHYSDEV dev, const POINT* pt, const INT* counts, UINT polys )
{
    return EMFDRV_PolyPolylinegon( dev, pt, counts, polys, EMR_POLYPOLYGON );
}
