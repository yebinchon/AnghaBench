#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_2__ {scalar_t__ op_type; } ;
struct vie {TYPE_1__ op; } ;

/* Variables and functions */
 scalar_t__ VIE_OP_TYPE_NONE ; 
 TYPE_1__* two_byte_opcodes ; 
 int /*<<< orphan*/  FUNC0 (struct vie*) ; 
 scalar_t__ FUNC1 (struct vie*,size_t*) ; 

__attribute__((used)) static int
FUNC2(struct vie *vie)
{
	uint8_t x;

	if (FUNC1(vie, &x))
		return (-1);

	vie->op = two_byte_opcodes[x];

	if (vie->op.op_type == VIE_OP_TYPE_NONE)
		return (-1);

	FUNC0(vie);
	return (0);
}