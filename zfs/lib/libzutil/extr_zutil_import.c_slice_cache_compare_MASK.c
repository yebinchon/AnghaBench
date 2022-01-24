#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {char* rn_name; int /*<<< orphan*/  rn_vdev_guid; } ;
typedef  TYPE_1__ rdsk_node_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

int
FUNC3(const void *arg1, const void *arg2)
{
	const char  *nm1 = ((rdsk_node_t *)arg1)->rn_name;
	const char  *nm2 = ((rdsk_node_t *)arg2)->rn_name;
	uint64_t guid1 = ((rdsk_node_t *)arg1)->rn_vdev_guid;
	uint64_t guid2 = ((rdsk_node_t *)arg2)->rn_vdev_guid;
	int rv;

	rv = FUNC1(FUNC2(nm1, nm2));
	if (rv)
		return (rv);

	return (FUNC0(guid1, guid2));
}