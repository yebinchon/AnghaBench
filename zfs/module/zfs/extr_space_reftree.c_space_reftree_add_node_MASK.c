#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  sr_refcnt; int /*<<< orphan*/  sr_offset; } ;
typedef  TYPE_1__ space_ref_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(avl_tree_t *t, uint64_t offset, int64_t refcnt)
{
	space_ref_t *sr;

	sr = FUNC1(sizeof (*sr), KM_SLEEP);
	sr->sr_offset = offset;
	sr->sr_refcnt = refcnt;

	FUNC0(t, sr);
}