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
struct TYPE_3__ {int zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 

__attribute__((used)) static int
FUNC1(zfs_cmd_t *zc)
{
	int count;

	FUNC0(&count);
	zc->zc_cookie = count;

	return (0);
}