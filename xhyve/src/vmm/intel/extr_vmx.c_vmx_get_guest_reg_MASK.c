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

/* Variables and functions */
 int /*<<< orphan*/  HV_X86_R10 ; 
 int /*<<< orphan*/  HV_X86_R11 ; 
 int /*<<< orphan*/  HV_X86_R12 ; 
 int /*<<< orphan*/  HV_X86_R13 ; 
 int /*<<< orphan*/  HV_X86_R14 ; 
 int /*<<< orphan*/  HV_X86_R15 ; 
 int /*<<< orphan*/  HV_X86_R8 ; 
 int /*<<< orphan*/  HV_X86_R9 ; 
 int /*<<< orphan*/  HV_X86_RAX ; 
 int /*<<< orphan*/  HV_X86_RBP ; 
 int /*<<< orphan*/  HV_X86_RBX ; 
 int /*<<< orphan*/  HV_X86_RCX ; 
 int /*<<< orphan*/  HV_X86_RDI ; 
 int /*<<< orphan*/  HV_X86_RDX ; 
 int /*<<< orphan*/  HV_X86_RSI ; 
 int /*<<< orphan*/  VMCS_GUEST_RSP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static uint64_t
FUNC3(int vcpu, int ident)
{
	switch (ident) {
	case 0:
		return (FUNC0(vcpu, HV_X86_RAX));
	case 1:
		return (FUNC0(vcpu, HV_X86_RCX));
	case 2:
		return (FUNC0(vcpu, HV_X86_RDX));
	case 3:
		return (FUNC0(vcpu, HV_X86_RBX));
	case 4:
		return (FUNC1(vcpu, VMCS_GUEST_RSP));
	case 5:
		return (FUNC0(vcpu, HV_X86_RBP));
	case 6:
		return (FUNC0(vcpu, HV_X86_RSI));
	case 7:
		return (FUNC0(vcpu, HV_X86_RDI));
	case 8:
		return (FUNC0(vcpu, HV_X86_R8));
	case 9:
		return (FUNC0(vcpu, HV_X86_R9));
	case 10:
		return (FUNC0(vcpu, HV_X86_R10));
	case 11:
		return (FUNC0(vcpu, HV_X86_R11));
	case 12:
		return (FUNC0(vcpu, HV_X86_R12));
	case 13:
		return (FUNC0(vcpu, HV_X86_R13));
	case 14:
		return (FUNC0(vcpu, HV_X86_R14));
	case 15:
		return (FUNC0(vcpu, HV_X86_R15));
	default:
		FUNC2("invalid vmx register %d", ident);
	}
}