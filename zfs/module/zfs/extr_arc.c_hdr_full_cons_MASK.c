#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  b_arc_node; int /*<<< orphan*/  b_freeze_lock; int /*<<< orphan*/  b_refcnt; int /*<<< orphan*/  b_cv; int /*<<< orphan*/  b_byteswap; } ;
struct TYPE_5__ {int /*<<< orphan*/  b_l2node; } ;
struct TYPE_7__ {TYPE_2__ b_l1hdr; TYPE_1__ b_l2hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_SPACE_HDRS ; 
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  DMU_BSWAP_NUMFUNCS ; 
 int /*<<< orphan*/  HDR_FULL_SIZE ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(void *vbuf, void *unused, int kmflag)
{
	arc_buf_hdr_t *hdr = vbuf;

	FUNC1(hdr, HDR_FULL_SIZE);
	hdr->b_l1hdr.b_byteswap = DMU_BSWAP_NUMFUNCS;
	FUNC2(&hdr->b_l1hdr.b_cv, NULL, CV_DEFAULT, NULL);
	FUNC6(&hdr->b_l1hdr.b_refcnt);
	FUNC5(&hdr->b_l1hdr.b_freeze_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC3(&hdr->b_l1hdr.b_arc_node);
	FUNC3(&hdr->b_l2hdr.b_l2node);
	FUNC4(&hdr->b_l1hdr.b_arc_node);
	FUNC0(HDR_FULL_SIZE, ARC_SPACE_HDRS);

	return (0);
}