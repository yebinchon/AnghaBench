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
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_SCREENCOPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  g_server_bpp ; 
 int g_width ; 
 int /*<<< orphan*/ * FUNC2 (int,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ has_screen_copy ; 
 scalar_t__ sdata ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(int x, int y, int cx, int cy, int srcx, int srcy)
{
  uint8* temp;
  uint8* s;
  uint8* d;
  int i;

  if (sdata != 0)
  {
    if (srcy < y)
    { // bottom to top
      s = FUNC2(srcx, (srcy + cy) - 1, sdata, g_width, g_server_bpp);
      d = FUNC2(x, (y + cy) - 1, sdata, g_width, g_server_bpp);
      for (i = 0; i < cy; i++)  // copy down
      {
        FUNC0(d, s, cx * g_server_Bpp);
        s = s - g_width * g_server_Bpp;
        d = d - g_width * g_server_Bpp;
      }
    }
    else if (srcy > y || srcx > x) // copy up or left
    { // top to bottom
      s = FUNC2(srcx, srcy, sdata, g_width, g_server_bpp);
      d = FUNC2(x, y, sdata, g_width, g_server_bpp);
      for (i = 0; i < cy; i++)
      {
        FUNC0(d, s, cx * g_server_Bpp);
        s = s + g_width * g_server_Bpp;
        d = d + g_width * g_server_Bpp;
      }
    }
    else // copy straight right
    {
      s = FUNC2(srcx, srcy, sdata, g_width, g_server_bpp);
      d = FUNC2(x, y, sdata, g_width, g_server_bpp);
      for (i = 0; i < cy; i++)
      {
        FUNC1(d, s, cx * g_server_Bpp);
        s = s + g_width * g_server_Bpp;
        d = d + g_width * g_server_Bpp;
      }
    }
  }
  else if (has_screen_copy)
  {
    FUNC3(ACCEL_SCREENCOPY, srcx, srcy, x, y, cx, cy);
  }
  else
  {
    // slow
    temp = (uint8*)FUNC7(cx * cy * g_server_Bpp);
    for (i = 0; i < cy; i++)
      FUNC5(FUNC2(0, i, temp, cx, g_server_bpp), srcx, srcy + i, cx * g_server_Bpp);
    for (i = 0; i < cy; i++)
      FUNC4(FUNC2(0, i, temp, cx, g_server_bpp), x, y + i, cx * g_server_Bpp);
    FUNC6(temp);
  }
}