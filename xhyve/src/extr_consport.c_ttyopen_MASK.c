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
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tio_new ; 
 int /*<<< orphan*/  tio_orig ; 
 int /*<<< orphan*/  ttyclose ; 

__attribute__((used)) static void
FUNC4(void)
{
	FUNC2(STDIN_FILENO, &tio_orig);

	FUNC1(&tio_new);
	FUNC3(STDIN_FILENO, TCSANOW, &tio_new);	

	FUNC0(ttyclose);
}