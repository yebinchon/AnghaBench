#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_cksum_t ;
struct TYPE_11__ {int /*<<< orphan*/  b_data; TYPE_3__* b_hdr; } ;
typedef  TYPE_2__ arc_buf_t ;
struct TYPE_10__ {int /*<<< orphan*/  b_freeze_lock; int /*<<< orphan*/ * b_freeze_cksum; } ;
struct TYPE_12__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int ZFS_DEBUG_MODIFY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int zfs_flags ; 

__attribute__((used)) static void
FUNC10(arc_buf_t *buf)
{
	arc_buf_hdr_t *hdr = buf->b_hdr;

	if (!(zfs_flags & ZFS_DEBUG_MODIFY))
		return;

	FUNC2(FUNC3(hdr));

	FUNC8(&buf->b_hdr->b_l1hdr.b_freeze_lock);
	if (hdr->b_l1hdr.b_freeze_cksum != NULL || FUNC0(buf)) {
		FUNC9(&hdr->b_l1hdr.b_freeze_lock);
		return;
	}

	FUNC2(!FUNC1(buf));
	FUNC2(!FUNC0(buf));
	hdr->b_l1hdr.b_freeze_cksum = FUNC7(sizeof (zio_cksum_t),
	    KM_SLEEP);
	FUNC6(buf->b_data, FUNC4(buf), NULL,
	    hdr->b_l1hdr.b_freeze_cksum);
	FUNC9(&hdr->b_l1hdr.b_freeze_lock);
	FUNC5(buf);
}