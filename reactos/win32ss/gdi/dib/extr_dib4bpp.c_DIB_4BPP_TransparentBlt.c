
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLATEOBJ ;
typedef int ULONG ;
typedef int SURFOBJ ;
typedef int RECTL ;
typedef int BOOLEAN ;


 int FALSE ;

BOOLEAN
DIB_4BPP_TransparentBlt(SURFOBJ *DestSurf, SURFOBJ *SourceSurf,
                        RECTL* DestRect, RECTL *SourceRect,
                        XLATEOBJ *ColorTranslation, ULONG iTransColor)
{
  return FALSE;
}
