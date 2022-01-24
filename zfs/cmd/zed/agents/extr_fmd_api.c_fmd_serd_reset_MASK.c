#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fmd_serd_eng_t ;
struct TYPE_2__ {int /*<<< orphan*/  mod_serds; } ;
typedef  TYPE_1__ fmd_module_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

void
FUNC4(fmd_hdl_t *hdl, const char *name)
{
	fmd_module_t *mp = (fmd_module_t *)hdl;
	fmd_serd_eng_t *sgp;

	if ((sgp = FUNC1(&mp->mod_serds, name)) == NULL) {
		FUNC3(LOG_ERR, "serd engine '%s' does not exist", name);
		return;
	}

	FUNC2(sgp);

	FUNC0(hdl, "serd_reset %s", name);
}