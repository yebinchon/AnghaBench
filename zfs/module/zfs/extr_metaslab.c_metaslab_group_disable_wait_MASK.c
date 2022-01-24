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
struct TYPE_3__ {int /*<<< orphan*/  mg_ms_disabled_lock; int /*<<< orphan*/  mg_ms_disabled_cv; scalar_t__ mg_disabled_updating; } ;
typedef  TYPE_1__ metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(metaslab_group_t *mg)
{
	FUNC0(FUNC1(&mg->mg_ms_disabled_lock));
	while (mg->mg_disabled_updating) {
		FUNC2(&mg->mg_ms_disabled_cv, &mg->mg_ms_disabled_lock);
	}
}