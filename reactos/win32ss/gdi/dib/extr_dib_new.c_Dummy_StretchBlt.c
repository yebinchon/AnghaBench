
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLATEOBJ ;
typedef int SURFOBJ ;
typedef int ROP4 ;
typedef int RECTL ;
typedef int POINTL ;
typedef int BRUSHOBJ ;
typedef int BOOLEAN ;


 int FALSE ;

BOOLEAN Dummy_StretchBlt(SURFOBJ *DestSurf, SURFOBJ *SourceSurf,
                         SURFOBJ *PatternSurface, SURFOBJ *MaskSurf,
                         RECTL* DestRect, RECTL *SourceRect,
                         POINTL* MaskOrigin, BRUSHOBJ* Brush,
                         POINTL* BrushOrign,
                         XLATEOBJ *ColorTranslation,
                         ROP4 Rop)
{
  return FALSE;
}
