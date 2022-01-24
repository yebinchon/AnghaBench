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
 int /*<<< orphan*/  SIZE_X ; 
 int /*<<< orphan*/  SIZE_Y ; 
 int initialized ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  loopmode ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  winproc ; 

void FUNC5(void)
{
   FUNC3(2);
   FUNC1(1, winproc, NULL, "tt", SIZE_X,SIZE_Y, 0, 1, 0, 0);
   FUNC4(NULL, 0);
   FUNC0();
   initialized = 1;
   FUNC2(loopmode, 0.016f);   // 30 fps = 0.33
}