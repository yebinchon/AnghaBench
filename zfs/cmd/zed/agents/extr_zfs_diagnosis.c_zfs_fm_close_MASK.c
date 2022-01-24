#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* zc_serd_checksum; char* zc_serd_io; scalar_t__ zc_has_remove_timer; } ;
struct TYPE_8__ {int /*<<< orphan*/  zc_node; int /*<<< orphan*/  zc_remove_timer; TYPE_1__ zc_data; } ;
typedef  TYPE_2__ zfs_case_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;
typedef  int /*<<< orphan*/  fmd_case_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  zfs_case_pool ; 
 int /*<<< orphan*/  zfs_cases ; 

__attribute__((used)) static void
FUNC6(fmd_hdl_t *hdl, fmd_case_t *cs)
{
	zfs_case_t *zcp = FUNC0(hdl, cs);

	if (zcp->zc_data.zc_serd_checksum[0] != '\0')
		FUNC2(hdl, zcp->zc_data.zc_serd_checksum);
	if (zcp->zc_data.zc_serd_io[0] != '\0')
		FUNC2(hdl, zcp->zc_data.zc_serd_io);
	if (zcp->zc_data.zc_has_remove_timer)
		FUNC3(hdl, zcp->zc_remove_timer);

	FUNC5(zfs_cases, zcp);
	FUNC4(zcp, &zcp->zc_node, zfs_case_pool);
	FUNC1(hdl, zcp, sizeof (zfs_case_t));
}