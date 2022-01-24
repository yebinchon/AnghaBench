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
typedef  int uint32_t ;

/* Variables and functions */
 int CR0_PE ; 
 int CR0_PG ; 
 int VMCS_CR0_MASK ; 
 int VMCS_CR0_SHADOW ; 
 int VMCS_CR4_MASK ; 
 int VMCS_CR4_SHADOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cr0_ones_mask ; 
 int cr0_zeros_mask ; 
 int cr4_ones_mask ; 
 int cr4_zeros_mask ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(int vcpuid, int which, uint32_t initial)
{
	int error, mask_ident, shadow_ident;
	uint64_t mask_value;

	if (which != 0 && which != 4)
		FUNC2("vmx_setup_cr_shadow: unknown cr%d", which);

	if (which == 0) {
		mask_ident = VMCS_CR0_MASK;
		mask_value = (cr0_ones_mask | cr0_zeros_mask) | (CR0_PG | CR0_PE);
		shadow_ident = VMCS_CR0_SHADOW;
	} else {
		mask_ident = VMCS_CR4_MASK;
		mask_value = cr4_ones_mask | cr4_zeros_mask;
		shadow_ident = VMCS_CR4_SHADOW;
	}

	error = FUNC1(vcpuid, FUNC0(mask_ident), mask_value);
	if (error)
		return (error);

	error = FUNC1(vcpuid, FUNC0(shadow_ident), initial);
	if (error)
		return (error);

	return (0);
}