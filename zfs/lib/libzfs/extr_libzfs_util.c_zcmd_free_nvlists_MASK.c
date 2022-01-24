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
struct TYPE_3__ {scalar_t__ zc_nvlist_dst; scalar_t__ zc_nvlist_src; scalar_t__ zc_nvlist_conf; } ;
typedef  TYPE_1__ zfs_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void
FUNC1(zfs_cmd_t *zc)
{
	FUNC0((void *)(uintptr_t)zc->zc_nvlist_conf);
	FUNC0((void *)(uintptr_t)zc->zc_nvlist_src);
	FUNC0((void *)(uintptr_t)zc->zc_nvlist_dst);
	zc->zc_nvlist_conf = 0;
	zc->zc_nvlist_src = 0;
	zc->zc_nvlist_dst = 0;
}