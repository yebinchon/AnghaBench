
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLATEOBJ ;
typedef int SURFOBJ ;
typedef int RECTL ;
typedef int CLIPOBJ ;
typedef int BOOLEAN ;
typedef int BLENDOBJ ;


 int FALSE ;

BOOLEAN
Dummy_AlphaBlend(SURFOBJ* Dest, SURFOBJ* Source, RECTL* DestRect,
                 RECTL* SourceRect, CLIPOBJ* ClipRegion,
                 XLATEOBJ* ColorTranslation, BLENDOBJ* BlendObj)
{
  return FALSE;
}
