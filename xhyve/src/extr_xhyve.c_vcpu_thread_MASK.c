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
typedef  int uint64_t ;
struct mt_vmm_info {int mt_vcpu; } ;
struct TYPE_2__ {int rip; scalar_t__ inst_length; } ;

/* Variables and functions */
 int BSP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__* vmexit ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void *
FUNC8(void *param)
{
	struct mt_vmm_info *mtp;
	uint64_t rip_entry;
	int vcpu;
	int error;

	mtp = param;
	vcpu = mtp->mt_vcpu;
	rip_entry = 0xfff0;

	error = FUNC6(vcpu);
	FUNC0(error == 0);

	FUNC5(vcpu);

	error = FUNC7(vcpu);
	FUNC0(error == 0);

	if (vcpu == BSP) {
        if (&fw_func != NULL) {
            rip_entry = FUNC2();
        } else {
            rip_entry = 0xFFF0;
        }
	} else {
		rip_entry = vmexit[vcpu].rip;
		FUNC3(vcpu, &rip_entry);
	}

	vmexit[vcpu].rip = rip_entry;
	vmexit[vcpu].inst_length = 0;

	FUNC4(vcpu, vmexit[vcpu].rip);

	/* not reached */
	FUNC1(1);
	return (NULL);
}