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
typedef  int MuError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  loaded ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void *cookie, MuError error)
{
	FUNC1((int)cookie == 5678);

	FUNC2(stderr, "render_progress: error=%d\n", error);
	(void)FUNC0(loaded, 1, NULL);
}