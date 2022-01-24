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
 int /*<<< orphan*/  GR_MODE_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_gc_clean ; 
 int /*<<< orphan*/  g_wnd ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int*,int*,int*,int*,int*,int*) ; 

void FUNC3(uint8 opcode, int x, int y, int cx, int cy,
                  int srcx, int srcy)
{
  if (opcode == 12)
  {
    if (FUNC2(&x, &y, &cx, &cy, &srcx, &srcy))
    {
      FUNC0(g_wnd, g_gc_clean, x, y, cx, cy, g_wnd, srcx, srcy,
                 GR_MODE_COPY);
    }
  }
  else
  {
    FUNC1("opcode %d in ui_screenblt\n", opcode);
  }
}