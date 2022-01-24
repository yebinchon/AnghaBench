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
struct TYPE_4__ {int /*<<< orphan*/  pi_value; int /*<<< orphan*/ * pi_name; } ;
typedef  TYPE_1__ zprop_index_t ;
struct TYPE_5__ {TYPE_1__* pd_table; } ;
typedef  TYPE_2__ zprop_desc_t ;
typedef  int /*<<< orphan*/  zfs_type_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZPROP_CONT ; 
 int ZPROP_INVAL ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(int prop, const char *string, uint64_t *index,
    zfs_type_t type)
{
	zprop_desc_t *prop_tbl;
	const zprop_index_t *idx_tbl;
	int i;

	if (prop == ZPROP_INVAL || prop == ZPROP_CONT)
		return (-1);

	FUNC0(prop < FUNC2(type));
	prop_tbl = FUNC3(type);
	if ((idx_tbl = prop_tbl[prop].pd_table) == NULL)
		return (-1);

	for (i = 0; idx_tbl[i].pi_name != NULL; i++) {
		if (FUNC1(string, idx_tbl[i].pi_name) == 0) {
			*index = idx_tbl[i].pi_value;
			return (0);
		}
	}

	return (-1);
}