
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINT ;
typedef int PHYSDEV ;
typedef int DWORD ;
typedef int BOOL ;


 int EMFDRV_Polylinegon (int ,int const*,int ,int ) ;
 int EMR_POLYBEZIERTO ;

BOOL EMFDRV_PolyBezierTo( PHYSDEV dev, const POINT *pts, DWORD count )
{
    return EMFDRV_Polylinegon( dev, pts, count, EMR_POLYBEZIERTO );
}
