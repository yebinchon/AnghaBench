#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLATEOBJ ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONG ;
struct TYPE_11__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_9__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_10__ {int lDelta; TYPE_1__ sizlBitmap; scalar_t__ pvScan0; } ;
typedef  TYPE_2__ SURFOBJ ;
typedef  TYPE_3__ RECTL ;
typedef  scalar_t__* PULONG ;
typedef  int PBYTE ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ BYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

BOOLEAN
FUNC2(SURFOBJ *DestSurf, SURFOBJ *SourceSurf,
                        RECTL*  DestRect,  RECTL *SourceRect,
                        XLATEOBJ *ColorTranslation, ULONG iTransColor)
{
  LONG RoundedRight, X, Y, SourceX = 0, SourceY = 0;
  ULONG *DestBits, Source, Dest;

  LONG DstHeight;
  LONG DstWidth;
  LONG SrcHeight;
  LONG SrcWidth;

  DstHeight = DestRect->bottom - DestRect->top;
  DstWidth = DestRect->right - DestRect->left;
  SrcHeight = SourceRect->bottom - SourceRect->top;
  SrcWidth = SourceRect->right - SourceRect->left;

  RoundedRight = DestRect->right - ((DestRect->right - DestRect->left) & 0x3);
  DestBits = (ULONG*)((PBYTE)DestSurf->pvScan0 + DestRect->left +
                      (DestRect->top * DestSurf->lDelta));

  for(Y = DestRect->top; Y < DestRect->bottom; Y++)
  {
    DestBits = (ULONG*)((PBYTE)DestSurf->pvScan0 + DestRect->left +
                        (Y * DestSurf->lDelta));
    SourceY = SourceRect->top+(Y - DestRect->top) * SrcHeight / DstHeight;
    for (X = DestRect->left; X < RoundedRight; X += 4, DestBits++)
    {
      Dest = *DestBits;

      SourceX = SourceRect->left+(X - DestRect->left) * SrcWidth / DstWidth;
      if (SourceX >= 0 && SourceY >= 0 &&
          SourceSurf->sizlBitmap.cx > SourceX && SourceSurf->sizlBitmap.cy > SourceY)
      {
        Source = FUNC0(SourceSurf, SourceX, SourceY);
        if(Source != iTransColor)
        {
          Dest &= 0xFFFFFF00;
          Dest |= (FUNC1(ColorTranslation, Source) & 0xFF);
        }
      }

      SourceX = SourceRect->left+(X+1 - DestRect->left) * SrcWidth / DstWidth;
      if (SourceX >= 0 && SourceY >= 0 &&
          SourceSurf->sizlBitmap.cx > SourceX && SourceSurf->sizlBitmap.cy > SourceY)
      {
        Source = FUNC0(SourceSurf, SourceX, SourceY);
        if(Source != iTransColor)
        {
          Dest &= 0xFFFF00FF;
          Dest |= ((FUNC1(ColorTranslation, Source) << 8) & 0xFF00);
        }
      }

      SourceX = SourceRect->left+(X+2 - DestRect->left) * SrcWidth / DstWidth;
      if (SourceX >= 0 && SourceY >= 0 &&
          SourceSurf->sizlBitmap.cx > SourceX && SourceSurf->sizlBitmap.cy > SourceY)
      {
        Source = FUNC0(SourceSurf, SourceX, SourceY);
        if(Source != iTransColor)
        {
          Dest &= 0xFF00FFFF;
          Dest |= ((FUNC1(ColorTranslation, Source) << 16) & 0xFF0000);
        }
      }

      SourceX = SourceRect->left+(X+3 - DestRect->left) * SrcWidth / DstWidth;
      if (SourceX >= 0 && SourceY >= 0 &&
          SourceSurf->sizlBitmap.cx > SourceX && SourceSurf->sizlBitmap.cy > SourceY)
      {
        Source = FUNC0(SourceSurf, SourceX, SourceY);
        if(Source != iTransColor)
        {
          Dest &= 0x00FFFFFF;
          Dest |= ((FUNC1(ColorTranslation, Source) << 24) & 0xFF000000);
        }
      }

      *DestBits = Dest;
    }

    if(X < DestRect->right)
    {
      for (; X < DestRect->right; X++)
      {
        SourceX = SourceRect->left+(X - DestRect->left) * SrcWidth / DstWidth;
        if (SourceX >= 0 && SourceY >= 0 &&
            SourceSurf->sizlBitmap.cx > SourceX && SourceSurf->sizlBitmap.cy > SourceY)
        {
          Source = FUNC0(SourceSurf, SourceX, SourceY);
          if(Source != iTransColor)
          {
            *((BYTE*)DestBits) = (BYTE)(FUNC1(ColorTranslation, Source) & 0xFF);
          }
        }
        DestBits = (PULONG)((ULONG_PTR)DestBits + 1);
      }
    }
  }

  return TRUE;
}