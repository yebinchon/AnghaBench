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
struct TYPE_4__ {int /*<<< orphan*/  zc_version; } ;
struct TYPE_5__ {TYPE_1__ zc_data; } ;
typedef  TYPE_2__ zfs_case_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CASE_DATA_VERSION_SERD ; 

__attribute__((used)) static void
FUNC0(fmd_hdl_t *hdl, zfs_case_t *zcp)
{
	zcp->zc_data.zc_version = CASE_DATA_VERSION_SERD;
}