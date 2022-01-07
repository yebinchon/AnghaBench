
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_7__ {int top; int left; int right; int bottom; } ;
struct TYPE_6__ {int lDelta; scalar_t__ pvScan0; } ;
typedef TYPE_1__ SURFOBJ ;
typedef TYPE_2__ RECTL ;
typedef int* PUSHORT ;
typedef int* PBYTE ;
typedef int LONG ;
typedef int BOOLEAN ;


 int DIB_24BPP_HLine (TYPE_1__*,int,int,int,int) ;
 int TRUE ;

BOOLEAN
DIB_24BPP_ColorFill(SURFOBJ* DestSurface, RECTL* DestRect, ULONG color)
{
  LONG DestY;
  for (DestY = DestRect->top; DestY< DestRect->bottom; DestY++)
  {
    DIB_24BPP_HLine(DestSurface, DestRect->left, DestRect->right, DestY, color);
  }

  return TRUE;
}
