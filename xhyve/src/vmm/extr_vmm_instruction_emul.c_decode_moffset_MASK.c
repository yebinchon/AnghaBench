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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int op_flags; } ;
struct vie {int addrsize; scalar_t__ displacement; TYPE_1__ op; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VIE_OP_F_MOFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct vie*) ; 
 scalar_t__ FUNC2 (struct vie*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(struct vie *vie)
{
	int i, n;
	uint8_t x;
	union {
		char	buf[8];
		uint64_t u64;
	} u;

	if ((vie->op.op_flags & VIE_OP_F_MOFFSET) == 0)
		return (0);

	/*
	 * Section 2.2.1.4, "Direct Memory-Offset MOVs", Intel SDM:
	 * The memory offset size follows the address-size of the instruction.
	 */
	n = vie->addrsize;
	FUNC0(n == 2 || n == 4 || n == 8, ("invalid moffset bytes: %d", n));

	u.u64 = 0;
	for (i = 0; i < n; i++) {
		if (FUNC2(vie, &x))
			return (-1);

		u.buf[i] = (char) x;
		FUNC1(vie);
	}
	vie->displacement = (int64_t) u.u64;
	return (0);
}