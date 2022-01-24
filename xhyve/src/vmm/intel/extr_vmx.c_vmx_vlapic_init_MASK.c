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
struct vmx {int /*<<< orphan*/ * apic_page; int /*<<< orphan*/  vm; } ;
struct vlapic_vtx {struct vmx* vmx; } ;
struct vlapic {int vcpuid; struct LAPIC* apic_page; int /*<<< orphan*/  vm; } ;
struct LAPIC {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,int) ; 
 struct vlapic* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*) ; 

__attribute__((used)) static struct vlapic *
FUNC4(void *arg, int vcpuid)
{
	struct vmx *vmx;
	struct vlapic *vlapic;
	struct vlapic_vtx *vlapic_vtx;
	
	vmx = arg;

	vlapic = FUNC2(sizeof(struct vlapic_vtx));
	FUNC0(vlapic);
	FUNC1(vlapic, sizeof(struct vlapic));
	vlapic->vm = vmx->vm;
	vlapic->vcpuid = vcpuid;
	vlapic->apic_page = (struct LAPIC *)&vmx->apic_page[vcpuid];

	vlapic_vtx = (struct vlapic_vtx *)vlapic;
	vlapic_vtx->vmx = vmx;

	FUNC3(vlapic);

	return (vlapic);
}