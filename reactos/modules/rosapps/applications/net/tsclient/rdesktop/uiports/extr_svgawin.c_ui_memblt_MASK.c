#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_2__ {int width; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ bitmap ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  g_server_bpp ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mousex ; 
 int /*<<< orphan*/  mousey ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 scalar_t__ FUNC7 (int*,int*,int*,int*,int*,int*) ; 

void FUNC8(uint8 opcode, int x, int y, int cx, int cy,
               HBITMAP src, int srcx, int srcy)
{
  bitmap* b;
  int i;
  int j;
  int pixel;

  if (FUNC7(&x, &y, &cx, &cy, &srcx, &srcy))
  {
    if (FUNC2(x, y, cx, cy))
      FUNC3(mousex, mousey);
    b = (bitmap*)src;
    if (opcode == 0xc)
      FUNC0(x, y, cx, cy, FUNC5(srcx, srcy, b->data, b->width, g_server_bpp),
                     b->width * g_server_Bpp);
    else
    {
      for (i = 0; i < cy; i++)
      {
        for (j = 0; j < cx; j++)
        {
          pixel = FUNC4(srcx + j, srcy + i, b->data, b->width, g_server_bpp);
          FUNC6(x + j, y + i, pixel, opcode);
        }
      }
    }
    FUNC1(x, y, cx, cy, False);
  }
}