#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zri_result; int /*<<< orphan*/  zri_outnvl; int /*<<< orphan*/  zri_state; } ;
typedef  TYPE_1__ zcp_run_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECHRNG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZCP_RET_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(zcp_run_info_t *ri, const char *poolname)
{
	ri->zri_result = FUNC0(ECHRNG);
	FUNC2(ri->zri_state, 0);
	(void) FUNC1(ri->zri_state, "Could not open pool: %s",
	    poolname);
	FUNC3(ri->zri_state, ri->zri_outnvl,
	    ZCP_RET_ERROR, &ri->zri_result);

}