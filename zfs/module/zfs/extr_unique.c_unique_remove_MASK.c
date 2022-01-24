#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  un_value; } ;
typedef  TYPE_1__ unique_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unique_avl ; 
 int /*<<< orphan*/  unique_mtx ; 

void
FUNC5(uint64_t value)
{
	unique_t un_tofind;
	unique_t *un;

	un_tofind.un_value = value;
	FUNC3(&unique_mtx);
	un = FUNC0(&unique_avl, &un_tofind, NULL);
	if (un != NULL) {
		FUNC1(&unique_avl, un);
		FUNC2(un, sizeof (unique_t));
	}
	FUNC4(&unique_mtx);
}