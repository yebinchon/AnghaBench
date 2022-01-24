#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {int /*<<< orphan*/  colour; } ;
typedef  TYPE_1__ PEN ;

/* Variables and functions */
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mousex ; 
 int /*<<< orphan*/  mousey ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(uint8 opcode, int startx, int starty, int endx,
             int endy, PEN* pen)
{
  int dx;
  int dy;
  int incx;
  int incy;
  int dpr;
  int dpru;
  int p;
  int left;
  int top;
  int right;
  int bottom;

  if (startx > endx)
  {
    dx = startx - endx;
    incx = -1;
    left = endx;
    right = startx;
  }
  else
  {
    dx = endx - startx;
    incx = 1;
    left = startx;
    right = endx;
  }
  if (starty > endy)
  {
    dy = starty - endy;
    incy = -1;
    top = endy;
    bottom = starty;
  }
  else
  {
    dy = endy - starty;
    incy = 1;
    top = starty;
    bottom = endy;
  }
  if (FUNC1(left, top, (right - left) + 1, (bottom - top) + 1))
    FUNC2(mousex, mousey);
  if (dx >= dy)
  {
    dpr = dy << 1;
    dpru = dpr - (dx << 1);
    p = dpr - dx;
    for (; dx >= 0; dx--)
    {
      FUNC3(startx, starty, pen->colour, opcode);
      if (p > 0)
      {
        startx += incx;
        starty += incy;
        p += dpru;
      }
      else
      {
        startx += incx;
        p += dpr;
      }
    }
  }
  else
  {
    dpr = dx << 1;
    dpru = dpr - (dy << 1);
    p = dpr - dy;
    for (; dy >= 0; dy--)
    {
      FUNC3(startx, starty, pen->colour, opcode);
      if (p > 0)
      {
        startx += incx;
        starty += incy;
        p += dpru;
      }
      else
      {
        starty += incy;
        p += dpr;
      }
    }
  }
  FUNC0(left, top, (right - left) + 1, (bottom - top) + 1, True);
}