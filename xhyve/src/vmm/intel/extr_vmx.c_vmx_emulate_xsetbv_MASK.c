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
struct xsave_limits {int xcr0_allowed; int /*<<< orphan*/  xsave_enabled; } ;
struct vmx {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int CR4_XSAVE ; 
 int HANDLED ; 
 int /*<<< orphan*/  HV_X86_RAX ; 
 int /*<<< orphan*/  HV_X86_RCX ; 
 int /*<<< orphan*/  HV_X86_RDX ; 
 int /*<<< orphan*/  HV_X86_XCR0 ; 
 int /*<<< orphan*/  VMCS_GUEST_CR4 ; 
 int XFEATURE_AVX ; 
 int XFEATURE_AVX512 ; 
 int XFEATURE_ENABLED_AVX ; 
 int XFEATURE_ENABLED_BNDCSR ; 
 int XFEATURE_ENABLED_BNDREGS ; 
 int XFEATURE_ENABLED_X87 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct xsave_limits* FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct vmx *vmx, int vcpu)
{
	uint64_t xcrval;
	const struct xsave_limits *limits;

	limits = FUNC5();

	/*
	 * Note that the processor raises a GP# fault on its own if
	 * xsetbv is executed for CPL != 0, so we do not have to
	 * emulate that fault here.
	 */

	/* Only xcr0 is supported. */
	if (FUNC0(vcpu, HV_X86_RCX) != 0) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	/* We only handle xcr0 if both the host and guest have XSAVE enabled. */
	if (!limits->xsave_enabled ||
		!(FUNC4(vcpu, VMCS_GUEST_CR4) & CR4_XSAVE))
	{
		FUNC3(vmx->vm, vcpu);
		return (HANDLED);
	}

	xcrval = FUNC0(vcpu, HV_X86_RDX) << 32
		| (FUNC0(vcpu, HV_X86_RAX) & 0xffffffff);

	if ((xcrval & ~limits->xcr0_allowed) != 0) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	if (!(xcrval & XFEATURE_ENABLED_X87)) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	/* AVX (YMM_Hi128) requires SSE. */
	if (xcrval & XFEATURE_ENABLED_AVX &&
	    (xcrval & XFEATURE_AVX) != XFEATURE_AVX) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	/*
	 * AVX512 requires base AVX (YMM_Hi128) as well as OpMask,
	 * ZMM_Hi256, and Hi16_ZMM.
	 */
	if (xcrval & XFEATURE_AVX512 &&
	    (xcrval & (XFEATURE_AVX512 | XFEATURE_AVX)) !=
	    (XFEATURE_AVX512 | XFEATURE_AVX)) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	/*
	 * Intel MPX requires both bound register state flags to be
	 * set.
	 */
	if (((xcrval & XFEATURE_ENABLED_BNDREGS) != 0) !=
	    ((xcrval & XFEATURE_ENABLED_BNDCSR) != 0)) {
		FUNC2(vmx->vm, vcpu);
		return (HANDLED);
	}

	FUNC1(vcpu, HV_X86_XCR0, xcrval);
	return (HANDLED);
}