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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int g_bpp ; 
 int /*<<< orphan*/  g_gc ; 
 int g_server_bpp ; 
 int /*<<< orphan*/  g_wnd ; 

void FUNC3(int x, int y, int cx, int cy, int color)
{
  if (g_server_bpp == 16 && g_bpp == 32)
  {
    color = FUNC0(color);
  }
  FUNC2(g_gc, color);
  FUNC1(g_wnd, g_gc, x, y, cx, cy);
}