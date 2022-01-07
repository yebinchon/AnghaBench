
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; int right; int left; } ;
typedef int SURFOBJ ;
typedef TYPE_1__ RECTL ;
typedef scalar_t__ LONG ;
typedef int BOOLEAN ;


 int DIB_1BPP_HLine (int *,int ,int ,scalar_t__,int ) ;
 int TRUE ;

BOOLEAN
DIB_1BPP_ColorFill(SURFOBJ* DestSurface, RECTL* DestRect, ULONG color)
{
  LONG DestY;

  for (DestY = DestRect->top; DestY< DestRect->bottom; DestY++)
  {
    DIB_1BPP_HLine(DestSurface, DestRect->left, DestRect->right, DestY, color);
  }
  return TRUE;
}
