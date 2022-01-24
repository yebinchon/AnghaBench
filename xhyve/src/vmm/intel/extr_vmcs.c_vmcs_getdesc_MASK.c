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
struct seg_desc {scalar_t__ access; scalar_t__ limit; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ VMCS_INVALID_ENCODING ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int
FUNC3(int vcpuid, int seg, struct seg_desc *desc)
{
	int error;
	uint32_t base, limit, access;

	error = FUNC1(seg, &base, &limit, &access);
	if (error != 0)
		FUNC2("vmcs_setdesc: invalid segment register %d\n", seg);

	desc->base = FUNC0(vcpuid, base);
	desc->limit = (uint32_t) FUNC0(vcpuid, limit);
	if (access != VMCS_INVALID_ENCODING) {
		desc->access = (uint32_t) FUNC0(vcpuid, access);
	}

	return (0);
}