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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  dsdt ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5(int bus, uint16_t iobase, uint16_t iolimit, uint32_t membase32,
	uint32_t memlimit32, uint64_t membase64, uint64_t memlimit64)
{
	if (bus != 0) {
		FUNC4(stderr, "DSDT, unsupported PCI bus (%d)\n", bus);
		FUNC3(-1);
	}

	FUNC0(dsdt, 0xb6, iobase);
	FUNC0(dsdt, 0xb8, (iolimit - 1));
	FUNC0(dsdt, 0xbc, (iolimit - iobase));
	FUNC1(dsdt, 0xc8, membase32);
	FUNC1(dsdt, 0xcc, (memlimit32 - 1));
	FUNC1(dsdt, 0xd4, (memlimit32 - membase32));
	FUNC2(dsdt, 0xe6, membase64);
	FUNC2(dsdt, 0xee, (memlimit64 - 1));
	FUNC2(dsdt, 0xfe, (memlimit64 - membase64));
}