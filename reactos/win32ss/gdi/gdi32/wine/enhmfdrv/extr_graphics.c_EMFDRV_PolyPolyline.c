
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINT ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int EMFDRV_PolyPolylinegon (int ,int const*,int const*,int ,int ) ;
 int EMR_POLYPOLYLINE ;

BOOL EMFDRV_PolyPolyline(PHYSDEV dev, const POINT* pt, const DWORD* counts, DWORD polys)
{
    return EMFDRV_PolyPolylinegon( dev, pt, (const INT *)counts, polys,
       EMR_POLYPOLYLINE );
}
