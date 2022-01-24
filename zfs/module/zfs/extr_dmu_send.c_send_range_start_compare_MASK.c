#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
struct send_range {int object; int start_blkid; int eos_marker; scalar_t__ type; } ;
typedef  int int64_t ;

/* Variables and functions */
 int DNODES_PER_BLOCK ; 
 scalar_t__ OBJECT ; 
 scalar_t__ OBJECT_RANGE ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct send_range *r1, struct send_range *r2)
{
	uint64_t r1_objequiv = r1->object;
	uint64_t r1_l0equiv = r1->start_blkid;
	uint64_t r2_objequiv = r2->object;
	uint64_t r2_l0equiv = r2->start_blkid;
	int64_t cmp = FUNC0(r1->eos_marker, r2->eos_marker);
	if (FUNC2(cmp))
		return (cmp);
	if (r1->object == 0) {
		r1_objequiv = r1->start_blkid * DNODES_PER_BLOCK;
		r1_l0equiv = 0;
	}
	if (r2->object == 0) {
		r2_objequiv = r2->start_blkid * DNODES_PER_BLOCK;
		r2_l0equiv = 0;
	}

	cmp = FUNC0(r1_objequiv, r2_objequiv);
	if (FUNC1(cmp))
		return (cmp);
	cmp = FUNC0(r2->type == OBJECT_RANGE, r1->type == OBJECT_RANGE);
	if (FUNC2(cmp))
		return (cmp);
	cmp = FUNC0(r2->type == OBJECT, r1->type == OBJECT);
	if (FUNC2(cmp))
		return (cmp);

	return (FUNC0(r1_l0equiv, r2_l0equiv));
}