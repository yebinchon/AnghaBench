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
struct TYPE_3__ {int /*<<< orphan*/ * ga_cbp; scalar_t__ ga_verbose; } ;
typedef  TYPE_1__ get_all_state_t ;
typedef  int /*<<< orphan*/  get_all_cb_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  get_one_dataset ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(get_all_cb_t *cbp, boolean_t verbose)
{
	get_all_state_t state = {
	    .ga_verbose = verbose,
	    .ga_cbp = cbp
	};

	if (verbose)
		FUNC2(FUNC1("Reading ZFS config"));
	(void) FUNC3(g_zfs, get_one_dataset, &state);

	if (verbose)
		FUNC0(FUNC1("done."));
}