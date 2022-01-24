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
struct TYPE_3__ {int /*<<< orphan*/  dd_pending_frees; int /*<<< orphan*/  dd_pending_allocs; int /*<<< orphan*/  dd_livelist; } ;
typedef  TYPE_1__ dsl_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(dsl_dir_t *dd)
{
	FUNC1(&dd->dd_livelist);
	FUNC0(&dd->dd_pending_allocs);
	FUNC0(&dd->dd_pending_frees);
}