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
struct seg_desc {int /*<<< orphan*/  access; int /*<<< orphan*/  limit; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC1(int vcpu, int reg, struct seg_desc *seg_desc)
{
	int error;

	error = FUNC0(vcpu, reg, &seg_desc->base, &seg_desc->limit,
		&seg_desc->access);

	return (error);
}