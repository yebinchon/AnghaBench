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
typedef  scalar_t__ hv_vcpuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC1(int vcpu) {
	hv_vcpuid_t hvvcpu;

	hvvcpu = (hv_vcpuid_t) vcpu;

	FUNC0(&hvvcpu, 1);
}