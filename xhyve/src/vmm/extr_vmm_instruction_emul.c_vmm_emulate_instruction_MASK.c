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
typedef  int /*<<< orphan*/  uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct TYPE_2__ {int op_type; } ;
struct vie {TYPE_1__ op; int /*<<< orphan*/  decoded; } ;
typedef  int /*<<< orphan*/  mem_region_write_t ;
typedef  int /*<<< orphan*/  mem_region_read_t ;

/* Variables and functions */
 int EINVAL ; 
#define  VIE_OP_TYPE_AND 140 
#define  VIE_OP_TYPE_BITTEST 139 
#define  VIE_OP_TYPE_CMP 138 
#define  VIE_OP_TYPE_GROUP1 137 
#define  VIE_OP_TYPE_MOV 136 
#define  VIE_OP_TYPE_MOVS 135 
#define  VIE_OP_TYPE_MOVSX 134 
#define  VIE_OP_TYPE_MOVZX 133 
#define  VIE_OP_TYPE_OR 132 
#define  VIE_OP_TYPE_POP 131 
#define  VIE_OP_TYPE_PUSH 130 
#define  VIE_OP_TYPE_STOS 129 
#define  VIE_OP_TYPE_SUB 128 
 int FUNC0 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (void*,int,int /*<<< orphan*/ ,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (void*,int,int /*<<< orphan*/ ,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC8 (void*,int,int /*<<< orphan*/ ,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (void*,int,int /*<<< orphan*/ ,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (void*,int,int /*<<< orphan*/ ,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC11 (void*,int,int /*<<< orphan*/ ,struct vie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int
FUNC12(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
    struct vm_guest_paging *paging, mem_region_read_t memread,
    mem_region_write_t memwrite, void *memarg)
{
	int error;

	if (!vie->decoded)
		return (EINVAL);

	switch (vie->op.op_type) {
	case VIE_OP_TYPE_GROUP1:
		error = FUNC3(vm, vcpuid, gpa, vie, paging, memread,
		    memwrite, memarg);
		break;
	case VIE_OP_TYPE_POP:
		error = FUNC8(vm, vcpuid, gpa, vie, paging, memread,
		    memwrite, memarg);
		break;
	case VIE_OP_TYPE_PUSH:
		error = FUNC9(vm, vcpuid, gpa, vie, paging, memread,
		    memwrite, memarg);
		break;
	case VIE_OP_TYPE_CMP:
		error = FUNC2(vm, vcpuid, gpa, vie,
				    memread, memwrite, memarg);
		break;
	case VIE_OP_TYPE_MOV:
		error = FUNC4(vm, vcpuid, gpa, vie,
				    memread, memwrite, memarg);
		break;
	case VIE_OP_TYPE_MOVSX:
	case VIE_OP_TYPE_MOVZX:
		error = FUNC6(vm, vcpuid, gpa, vie,
				     memread, memwrite, memarg);
		break;
	case VIE_OP_TYPE_MOVS:
		error = FUNC5(vm, vcpuid, gpa, vie, paging, memread,
		    memwrite, memarg);
		break;
	case VIE_OP_TYPE_STOS:
		error = FUNC10(vm, vcpuid, gpa, vie, paging, memread,
		    memwrite, memarg);
		break;
	case VIE_OP_TYPE_AND:
		error = FUNC0(vm, vcpuid, gpa, vie,
				    memread, memwrite, memarg);
		break;
	case VIE_OP_TYPE_OR:
		error = FUNC7(vm, vcpuid, gpa, vie,
				    memread, memwrite, memarg);
		break;
	case VIE_OP_TYPE_SUB:
		error = FUNC11(vm, vcpuid, gpa, vie,
				    memread, memwrite, memarg);
		break;
	case VIE_OP_TYPE_BITTEST:
		error = FUNC1(vm, vcpuid, gpa, vie,
		    memread, memwrite, memarg);
		break;
	default:
		error = EINVAL;
		break;
	}

	return (error);
}