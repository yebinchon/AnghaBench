
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; int right; int left; } ;
typedef int SURFOBJ ;
typedef TYPE_1__ RECTL ;
typedef int BOOLEAN ;


 int DIB_32BPP_HLine (int *,int ,int ,scalar_t__,scalar_t__) ;
 int TRUE ;

BOOLEAN
DIB_32BPP_ColorFill(SURFOBJ* DestSurface, RECTL* DestRect, ULONG color)
{
  ULONG DestY;

  for (DestY = DestRect->top; DestY< DestRect->bottom; DestY++)
  {
    DIB_32BPP_HLine (DestSurface, DestRect->left, DestRect->right, DestY, color);
  }

  return TRUE;
}
