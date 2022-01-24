#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int snapdev; } ;
typedef  TYPE_1__ zvol_snapdev_cb_arg_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* zv_create_minor ) (char const*) ;} ;

/* Variables and functions */
#define  ZFS_SNAPDEV_HIDDEN 129 
#define  ZFS_SNAPDEV_VISIBLE 128 
 TYPE_2__* ops ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *dsname, void *param)
{
	zvol_snapdev_cb_arg_t *arg = param;

	if (FUNC0(dsname, '@') == NULL)
		return (0);

	switch (arg->snapdev) {
		case ZFS_SNAPDEV_VISIBLE:
			(void) ops->zv_create_minor(dsname);
			break;
		case ZFS_SNAPDEV_HIDDEN:
			(void) FUNC2(dsname);
			break;
	}

	return (0);
}