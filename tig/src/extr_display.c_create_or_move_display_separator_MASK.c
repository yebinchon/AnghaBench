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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ display_sep ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC4(int height, int x)
{
	if (!display_sep) {
		display_sep = FUNC2(height, 1, 0, x);
		if (!display_sep)
			FUNC0("Failed to create separator window");

	} else {
		FUNC3(display_sep, height, 1);
		FUNC1(display_sep, 0, x);
	}
}