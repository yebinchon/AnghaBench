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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(int vcpu, int ident, uint64_t regval)
{
	switch (ident) {
	case 0:
		FUNC0(vcpu, HV_X86_RAX, regval);
		break;
	case 1:
		FUNC0(vcpu, HV_X86_RCX, regval);
		break;
	case 2:
		FUNC0(vcpu, HV_X86_RDX, regval);
		break;
	case 3:
		FUNC0(vcpu, HV_X86_RBX, regval);
		break;
	case 4:
		FUNC1(vcpu, VMCS_GUEST_RSP, regval);
		break;
	case 5:
		FUNC0(vcpu, HV_X86_RBP, regval);
		break;
	case 6:
		FUNC0(vcpu, HV_X86_RSI, regval);
		break;
	case 7:
		FUNC0(vcpu, HV_X86_RDI, regval);
		break;
	case 8:
		FUNC0(vcpu, HV_X86_R8, regval);
		break;
	case 9:
		FUNC0(vcpu, HV_X86_R9, regval);
		break;
	case 10:
		FUNC0(vcpu, HV_X86_R10, regval);
		break;
	case 11:
		FUNC0(vcpu, HV_X86_R11, regval);
		break;
	case 12:
		FUNC0(vcpu, HV_X86_R12, regval);
		break;
	case 13:
		FUNC0(vcpu, HV_X86_R13, regval);
		break;
	case 14:
		FUNC0(vcpu, HV_X86_R14, regval);
		break;
	case 15:
		FUNC0(vcpu, HV_X86_R15, regval);
		break;
	default:
		FUNC2("invalid vmx register %d", ident);
	}
}