
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int HRGN ;
typedef int BOOL ;


 int EMFDRV_PaintInvertRgn (int ,int ,int ) ;
 int EMR_PAINTRGN ;

BOOL EMFDRV_PaintRgn( PHYSDEV dev, HRGN hrgn )
{
    return EMFDRV_PaintInvertRgn( dev, hrgn, EMR_PAINTRGN );
}
