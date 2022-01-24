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
struct TYPE_3__ {int zc_guid; int /*<<< orphan*/  zc_inject_record; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;

/* Variables and functions */
 int FUNC0 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(zfs_cmd_t *zc)
{
	int id = (int)zc->zc_guid;
	int error;

	error = FUNC0(&id, zc->zc_name, sizeof (zc->zc_name),
	    &zc->zc_inject_record);

	zc->zc_guid = id;

	return (error);
}