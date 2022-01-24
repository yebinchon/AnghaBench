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
 int /*<<< orphan*/  ACCEL_PUTIMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int g_server_Bpp ; 
 int /*<<< orphan*/  g_server_bpp ; 
 int g_width ; 
 int /*<<< orphan*/ * FUNC1 (int,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ has_put_image ; 
 scalar_t__ sdata ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 

void FUNC4(int x, int y, int cx, int cy, uint8* data, int line_size)
{
  int i;
  uint8* s;
  uint8* d;

  if (sdata != 0)
  {
    s = data;
    d = FUNC1(x, y, sdata, g_width, g_server_bpp);
    for (i = 0; i < cy; i++)
    {
      FUNC0(d, s, cx * g_server_Bpp);
      s = s + line_size;
      d = d + g_width * g_server_Bpp;
    }
  }
  else if (has_put_image && line_size == cx * g_server_Bpp)
  {
    FUNC2(ACCEL_PUTIMAGE, x, y, cx, cy, data);
  }
  else
  {
    s = data;
    for (i = 0; i < cy; i++)
    {
      FUNC3(s, x, y + i, cx * g_server_Bpp);
      s = s + line_size;
    }
  }
}