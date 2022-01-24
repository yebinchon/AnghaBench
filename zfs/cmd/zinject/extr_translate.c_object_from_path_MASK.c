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
struct TYPE_3__ {int /*<<< orphan*/  zi_object; int /*<<< orphan*/  zi_objset; } ;
typedef  TYPE_1__ zinject_record_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_OBJSETID ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const char *dataset, uint64_t object, zinject_record_t *record)
{
	zfs_handle_t *zhp;

	if ((zhp = FUNC1(g_zfs, dataset, ZFS_TYPE_DATASET)) == NULL)
		return (-1);

	record->zi_objset = FUNC2(zhp, ZFS_PROP_OBJSETID);
	record->zi_object = object;

	FUNC0(zhp);

	return (0);
}