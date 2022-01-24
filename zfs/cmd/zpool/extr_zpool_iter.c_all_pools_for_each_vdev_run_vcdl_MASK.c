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
struct TYPE_3__ {int count; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ vdev_cmd_data_list_t ;
typedef  int /*<<< orphan*/  tpool_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdev_run_cmd_thread ; 

__attribute__((used)) static void
FUNC5(vdev_cmd_data_list_t *vcdl)
{
	tpool_t *t;

	t = FUNC1(1, 5 * FUNC0(_SC_NPROCESSORS_ONLN), 0, NULL);
	if (t == NULL)
		return;

	/* Spawn off the command for each vdev */
	for (int i = 0; i < vcdl->count; i++) {
		(void) FUNC3(t, vdev_run_cmd_thread,
		    (void *) &vcdl->data[i]);
	}

	/* Wait for threads to finish */
	FUNC4(t);
	FUNC2(t);
}