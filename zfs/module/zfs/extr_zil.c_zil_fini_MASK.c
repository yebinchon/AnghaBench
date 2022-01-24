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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * zil_ksp ; 
 int /*<<< orphan*/  zil_lwb_cache ; 
 int /*<<< orphan*/  zil_zcw_cache ; 

void
FUNC2(void)
{
	FUNC0(zil_zcw_cache);
	FUNC0(zil_lwb_cache);

	if (zil_ksp != NULL) {
		FUNC1(zil_ksp);
		zil_ksp = NULL;
	}
}