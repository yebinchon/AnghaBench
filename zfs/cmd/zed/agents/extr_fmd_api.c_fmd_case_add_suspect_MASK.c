#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_4__ {char const* ci_uuid; TYPE_2__ ci_tv; } ;
typedef  TYPE_1__ fmd_case_t ;

/* Variables and functions */
 int /*<<< orphan*/  FMD_SLEEP ; 
 int /*<<< orphan*/  FM_CLASS ; 
 char const* FM_LIST_SUSPECT_CLASS ; 
 int /*<<< orphan*/  FM_SUSPECT_DIAG_CODE ; 
 int /*<<< orphan*/  FM_SUSPECT_DIAG_TIME ; 
 int /*<<< orphan*/  FM_SUSPECT_FAULT_LIST ; 
 int /*<<< orphan*/  FM_SUSPECT_FAULT_SZ ; 
 int /*<<< orphan*/  FM_SUSPECT_UUID ; 
 int /*<<< orphan*/  FM_SUSPECT_VERSION ; 
 int /*<<< orphan*/  FM_VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC12(fmd_hdl_t *hdl, fmd_case_t *cp, nvlist_t *fault)
{
	nvlist_t *nvl;
	const char *code = FUNC0(fault);
	int64_t tod[2];
	int err = 0;

	/*
	 * payload derived from fmd_protocol_list()
	 */

	(void) FUNC2(&cp->ci_tv, NULL);
	tod[0] = cp->ci_tv.tv_sec;
	tod[1] = cp->ci_tv.tv_usec;

	nvl = FUNC1(hdl, FMD_SLEEP);

	err |= FUNC7(nvl, FM_VERSION, FM_SUSPECT_VERSION);
	err |= FUNC5(nvl, FM_CLASS, FM_LIST_SUSPECT_CLASS);
	err |= FUNC5(nvl, FM_SUSPECT_UUID, cp->ci_uuid);
	err |= FUNC5(nvl, FM_SUSPECT_DIAG_CODE, code);
	err |= FUNC3(nvl, FM_SUSPECT_DIAG_TIME, tod, 2);
	err |= FUNC6(nvl, FM_SUSPECT_FAULT_SZ, 1);
	err |= FUNC4(nvl, FM_SUSPECT_FAULT_LIST, &fault, 1);

	if (err)
		FUNC9("failed to populate nvlist");

	FUNC10(fault, cp->ci_uuid, code);
	FUNC11(FM_LIST_SUSPECT_CLASS, NULL, nvl);

	FUNC8(nvl);
	FUNC8(fault);
}