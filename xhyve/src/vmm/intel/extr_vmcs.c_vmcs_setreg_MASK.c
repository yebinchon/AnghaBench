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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 

int
FUNC3(int vcpuid, int ident, uint64_t val)
{
	uint32_t encoding;

	if (ident < 0)
		encoding = ident & 0x7fffffff;
	else
		encoding = FUNC0(ident);

	if (encoding == (uint32_t)-1)
		return (EINVAL);

	val = FUNC1(encoding, val);

	FUNC2(vcpuid, encoding, val);

	return (0);
}