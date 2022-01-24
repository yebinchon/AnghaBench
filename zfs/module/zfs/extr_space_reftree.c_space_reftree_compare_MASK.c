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
struct TYPE_4__ {int /*<<< orphan*/  sr_offset; } ;
typedef  TYPE_1__ space_ref_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(const void *x1, const void *x2)
{
	const space_ref_t *sr1 = (const space_ref_t *)x1;
	const space_ref_t *sr2 = (const space_ref_t *)x2;

	int cmp = FUNC0(sr1->sr_offset, sr2->sr_offset);
	if (FUNC2(cmp))
		return (cmp);

	return (FUNC1(sr1, sr2));
}