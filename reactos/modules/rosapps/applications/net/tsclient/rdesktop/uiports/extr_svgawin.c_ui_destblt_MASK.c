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
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mousex ; 
 int /*<<< orphan*/  mousey ; 
 scalar_t__ FUNC4 (int*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(uint8 opcode, int x, int y, int cx, int cy)
{
  if (FUNC4(&x, &y, &cx, &cy, NULL, NULL))
  {
    if (FUNC1(x, y, cx, cy))
      FUNC2(mousex, mousey);
    FUNC3(x, y, cx, cy, -1, opcode);
    FUNC0(x, y, cx, cy, False);
  }
}