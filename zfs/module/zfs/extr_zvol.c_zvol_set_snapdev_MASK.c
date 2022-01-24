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
struct TYPE_3__ {char const* zsda_name; int /*<<< orphan*/  zsda_value; int /*<<< orphan*/  zsda_source; } ;
typedef  TYPE_1__ zvol_set_prop_int_arg_t ;
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_set_snapdev_check ; 
 int /*<<< orphan*/  zvol_set_snapdev_sync ; 

int
FUNC1(const char *ddname, zprop_source_t source, uint64_t snapdev)
{
	zvol_set_prop_int_arg_t zsda;

	zsda.zsda_name = ddname;
	zsda.zsda_source = source;
	zsda.zsda_value = snapdev;

	return (FUNC0(ddname, zvol_set_snapdev_check,
	    zvol_set_snapdev_sync, &zsda, 0, ZFS_SPACE_CHECK_NONE));
}