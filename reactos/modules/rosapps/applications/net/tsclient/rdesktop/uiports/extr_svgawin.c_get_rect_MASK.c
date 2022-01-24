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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  g_server_bpp ; 
 int /*<<< orphan*/  g_width ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sdata ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 

void FUNC3(int x, int y, int cx, int cy, uint8* p)
{
  int i;

  if (x < 0)
  {
    cx = cx + x;
    x = 0;
  }
  if (y < 0)
  {
    cy = cy + y;
    y = 0;
  }
  if (sdata != 0)
  {
    for (i = 0; i < cy; i++)
    {
      FUNC0(p, FUNC1(x, y + i, sdata, g_width, g_server_bpp), cx * g_server_Bpp);
      p = p + cx * g_server_Bpp;
    }
  }
  else
  {
    for (i = 0; i < cy; i++)
    {
      FUNC2(p, x, y + i, cx * g_server_Bpp);
      p = p + cx * g_server_Bpp;
    }
  }
}