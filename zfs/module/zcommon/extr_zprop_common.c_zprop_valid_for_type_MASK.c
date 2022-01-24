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
struct TYPE_3__ {int pd_types; } ;
typedef  TYPE_1__ zprop_desc_t ;
typedef  int zfs_type_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int ZPROP_CONT ; 
 int ZPROP_INVAL ; 
 int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 

boolean_t
FUNC3(int prop, zfs_type_t type, boolean_t headcheck)
{
	zprop_desc_t *prop_tbl;

	if (prop == ZPROP_INVAL || prop == ZPROP_CONT)
		return (B_FALSE);

	FUNC0(prop < FUNC1(type));
	prop_tbl = FUNC2(type);
	if (headcheck && prop_tbl[prop].pd_types == ZFS_TYPE_SNAPSHOT)
		return (B_TRUE);
	return ((prop_tbl[prop].pd_types & type) != 0);
}