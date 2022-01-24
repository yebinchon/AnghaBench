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
typedef  scalar_t__ uint32_t ;
struct vioapic {scalar_t__ ioregsel; } ;

/* Variables and functions */
 scalar_t__ IOREGSEL ; 
 scalar_t__ IOWIN ; 
 scalar_t__ VIOAPIC_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vioapic*) ; 
 scalar_t__ FUNC2 (struct vioapic*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vioapic*,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct vioapic *vioapic, int vcpuid, uint64_t gpa,
    uint64_t *data, int size, bool doread)
{
	uint64_t offset;

	offset = gpa - VIOAPIC_BASE;

	/*
	 * The IOAPIC specification allows 32-bit wide accesses to the
	 * IOREGSEL (offset 0) and IOWIN (offset 16) registers.
	 */
	if (size != 4 || (offset != IOREGSEL && offset != IOWIN)) {
		if (doread)
			*data = 0;
		return (0);
	}

	FUNC0(vioapic);
	if (offset == IOREGSEL) {
		if (doread)
			*data = vioapic->ioregsel;
		else
			vioapic->ioregsel = (uint32_t) *data;
	} else {
		if (doread) {
			*data = FUNC2(vioapic, vcpuid,
			    vioapic->ioregsel);
		} else {
			FUNC3(vioapic, vcpuid, vioapic->ioregsel,
				((uint32_t) *data));
		}
	}
	FUNC1(vioapic);

	return (0);
}