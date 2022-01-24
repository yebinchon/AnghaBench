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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  vm ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,size_t,scalar_t__*,void**) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,size_t,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(uint64_t gpa, size_t len, uint64_t prot, void **addr)
{
	void *object;
	uint64_t offset;
	int error;

	FUNC0(true);
	error = FUNC2(vm, gpa, len, prot);
	if (error == 0) {
		error = FUNC1(vm, gpa, len, &offset, &object);
		if (error == 0) {
			*addr = (void *) (((uintptr_t) object) + offset);
		}
	}
	FUNC0(false);
	return (error);
}