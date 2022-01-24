#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_cksum_t ;
struct TYPE_10__ {int /*<<< orphan*/  b_data; TYPE_3__* b_hdr; } ;
typedef  TYPE_2__ arc_buf_t ;
struct TYPE_9__ {int /*<<< orphan*/  b_freeze_lock; int /*<<< orphan*/ * b_freeze_cksum; } ;
struct TYPE_11__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int ZFS_DEBUG_MODIFY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int zfs_flags ; 

__attribute__((used)) static void
FUNC10(arc_buf_t *buf)
{
	arc_buf_hdr_t *hdr = buf->b_hdr;
	zio_cksum_t zc;

	if (!(zfs_flags & ZFS_DEBUG_MODIFY))
		return;

	if (FUNC0(buf))
		return;

	FUNC1(FUNC2(hdr));

	FUNC7(&hdr->b_l1hdr.b_freeze_lock);

	if (hdr->b_l1hdr.b_freeze_cksum == NULL || FUNC3(hdr)) {
		FUNC8(&hdr->b_l1hdr.b_freeze_lock);
		return;
	}

	FUNC6(buf->b_data, FUNC5(buf), NULL, &zc);
	if (!FUNC4(*hdr->b_l1hdr.b_freeze_cksum, zc))
		FUNC9("buffer modified while frozen!");
	FUNC8(&hdr->b_l1hdr.b_freeze_lock);
}