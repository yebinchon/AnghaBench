#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  b_hdr; } ;
typedef  TYPE_1__ arc_buf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ZFS_DEBUG_MODIFY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int zfs_flags ; 

void
FUNC4(arc_buf_t *buf)
{
	if (!(zfs_flags & ZFS_DEBUG_MODIFY))
		return;

	if (FUNC0(buf))
		return;

	FUNC1(FUNC2(buf->b_hdr));
	FUNC3(buf);
}