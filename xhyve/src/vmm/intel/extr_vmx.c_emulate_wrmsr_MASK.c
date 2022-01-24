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
typedef  int /*<<< orphan*/  u_int ;
struct vmx {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct vmx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vmx *vmx, int vcpuid, u_int num, uint64_t val, bool *retu)
{
	int error;

	if (FUNC0(num))
		error = FUNC1(vmx->vm, vcpuid, num, val, retu);
	else
		error = FUNC2(vmx, vcpuid, num, val);

	return (error);
}