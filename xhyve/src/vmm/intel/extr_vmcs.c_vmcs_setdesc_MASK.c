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
typedef  scalar_t__ uint32_t ;
struct seg_desc {int /*<<< orphan*/  access; int /*<<< orphan*/  limit; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ VMCS_INVALID_ENCODING ; 
 int FUNC0 (int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3(int vcpuid, int seg, struct seg_desc *desc)
{
	int error;
	uint32_t base, limit, access;

	error = FUNC0(seg, &base, &limit, &access);
	if (error != 0)
		FUNC2("vmcs_setdesc: invalid segment register %d\n", seg);

	FUNC1(vcpuid, base, desc->base);
	FUNC1(vcpuid, limit, desc->limit);
	if (access != VMCS_INVALID_ENCODING) {
		FUNC1(vcpuid, access, desc->access);
	}

	return (0);
}