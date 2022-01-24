#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  g_server_bpp ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mousex ; 
 int /*<<< orphan*/  mousey ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(uint8 opcode, int x, int y, int cx, int cy,
                  int srcx, int srcy)
{
  int i;
  int j;
  uint8* temp;

  if (x == srcx && y == srcy)
    return;
  if (FUNC9(&x, &y, &cx, &cy, &srcx, &srcy))
  {
    if (FUNC2(x, y, cx, cy) || FUNC2(srcx, srcy, cx, cy))
      FUNC4(mousex, mousey);
    if (opcode == 0xc) /* copy */
      FUNC0(x, y, cx, cy, srcx, srcy);
    else
    {
      temp = (uint8*)FUNC11(cx * cy * g_server_Bpp);
      for (i = 0; i < cy; i++)
        for (j = 0; j < cx; j++)
          FUNC8(j, i, FUNC5(srcx + j, srcy + i), temp, cx, g_server_bpp);
      for (i = 0; i < cy; i++)
        for (j = 0; j < cx; j++)
          FUNC7(x + j, y + i, FUNC6(j, i, temp, cx, g_server_bpp), opcode);
      FUNC10(temp);
    }
    FUNC1(x, y, cx, cy, False);
    FUNC3(); // draw them all so screen is not jumpy
  }
}