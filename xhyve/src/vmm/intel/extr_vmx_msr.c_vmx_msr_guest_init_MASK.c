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
struct vmx {int** guest_msrs; } ;
typedef  int /*<<< orphan*/  hv_vcpuid_t ;

/* Variables and functions */
 size_t IDX_MSR_PAT ; 
 int /*<<< orphan*/  MSR_CSTAR ; 
 int /*<<< orphan*/  MSR_KGSBASE ; 
 int /*<<< orphan*/  MSR_LSTAR ; 
 int /*<<< orphan*/  MSR_SF_MASK ; 
 int /*<<< orphan*/  MSR_STAR ; 
 int /*<<< orphan*/  PAT_UNCACHEABLE ; 
 int /*<<< orphan*/  PAT_UNCACHED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAT_WRITE_BACK ; 
 int /*<<< orphan*/  PAT_WRITE_THROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct vmx *vmx, int vcpuid)
{
	uint64_t *guest_msrs;

	guest_msrs = vmx->guest_msrs[vcpuid];


	FUNC1(((hv_vcpuid_t) vcpuid), MSR_LSTAR, 1);
	FUNC1(((hv_vcpuid_t) vcpuid), MSR_CSTAR, 1);
	FUNC1(((hv_vcpuid_t) vcpuid), MSR_STAR, 1);
	FUNC1(((hv_vcpuid_t) vcpuid), MSR_SF_MASK, 1);
	FUNC1(((hv_vcpuid_t) vcpuid), MSR_KGSBASE, 1);

	/*
	 * Initialize guest IA32_PAT MSR with default value after reset.
	 */
	guest_msrs[IDX_MSR_PAT] = FUNC0(0, PAT_WRITE_BACK) |
		FUNC0(1, PAT_WRITE_THROUGH) |
		FUNC0(2, PAT_UNCACHED)      |
		FUNC0(3, PAT_UNCACHEABLE)   |
		FUNC0(4, PAT_WRITE_BACK)    |
		FUNC0(5, PAT_WRITE_THROUGH) |
		FUNC0(6, PAT_UNCACHED)      |
		FUNC0(7, PAT_UNCACHEABLE);

	return;
}