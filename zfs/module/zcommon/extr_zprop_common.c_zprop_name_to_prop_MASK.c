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
typedef  int /*<<< orphan*/  zfs_type_t ;
struct TYPE_3__ {char const* propname; int /*<<< orphan*/  prop_tbl; } ;
typedef  TYPE_1__ name_to_prop_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ZPROP_CONT ; 
 int ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zprop_name_to_prop_cb ; 

int
FUNC2(const char *propname, zfs_type_t type)
{
	int prop;
	name_to_prop_cb_t cb_data;

	cb_data.propname = propname;
	cb_data.prop_tbl = FUNC0(type);

	prop = FUNC1(zprop_name_to_prop_cb, &cb_data,
	    B_TRUE, B_FALSE, type);

	return (prop == ZPROP_CONT ? ZPROP_INVAL : prop);
}