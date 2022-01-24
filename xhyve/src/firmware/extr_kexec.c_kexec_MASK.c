#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {char* kernel; char* cmdline; char* initrd; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_4__ {uintptr_t base; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ BASE_GDT ; 
 int BASE_ZEROPAGE ; 
 int /*<<< orphan*/  VM_REG_GUEST_CR0 ; 
 int /*<<< orphan*/  VM_REG_GUEST_CS ; 
 int /*<<< orphan*/  VM_REG_GUEST_DS ; 
 int /*<<< orphan*/  VM_REG_GUEST_ES ; 
 int /*<<< orphan*/  VM_REG_GUEST_GDTR ; 
 int /*<<< orphan*/  VM_REG_GUEST_RBP ; 
 int /*<<< orphan*/  VM_REG_GUEST_RBX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RDI ; 
 int /*<<< orphan*/  VM_REG_GUEST_RFLAGS ; 
 int /*<<< orphan*/  VM_REG_GUEST_RIP ; 
 int /*<<< orphan*/  VM_REG_GUEST_RSI ; 
 int /*<<< orphan*/  VM_REG_GUEST_SS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__ kernel ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_1__ lowmem ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

uint64_t
FUNC9(void)
{
	uint64_t *gdt_entry;
	void *gpa_map;

	gpa_map = FUNC6(0, FUNC5());
	lowmem.base = (uintptr_t) gpa_map;
	lowmem.size = FUNC5();

	if (FUNC2(config.kernel,
		config.cmdline ? config.cmdline : "auto"))
	{
		FUNC1(stderr, "kexec: failed to load kernel %s\n", config.kernel);
		FUNC0();
	}

	if (config.initrd && FUNC3(config.initrd)) {
		FUNC1(stderr, "kexec: failed to load initrd %s\n", config.initrd);
		FUNC0();
	}

	gdt_entry = ((uint64_t *) (lowmem.base + BASE_GDT));
	gdt_entry[0] = 0x0000000000000000; /* null */
	gdt_entry[1] = 0x0000000000000000; /* null */
	gdt_entry[2] = 0x00cf9a000000ffff; /* code */
	gdt_entry[3] = 0x00cf92000000ffff; /* data */

	FUNC4(0);

	FUNC7(0, VM_REG_GUEST_GDTR, BASE_GDT, 0x1f, 0);
	FUNC7(0, VM_REG_GUEST_CS, 0, 0xffffffff, 0xc09b);
	FUNC7(0, VM_REG_GUEST_DS, 0, 0xffffffff, 0xc093);
	FUNC7(0, VM_REG_GUEST_ES, 0, 0xffffffff, 0xc093);
	FUNC7(0, VM_REG_GUEST_SS, 0, 0xffffffff, 0xc093);
	FUNC8(0, VM_REG_GUEST_CS, 0x10);
	FUNC8(0, VM_REG_GUEST_DS, 0x18);
	FUNC8(0, VM_REG_GUEST_ES, 0x18);
	FUNC8(0, VM_REG_GUEST_SS, 0x18);
	FUNC8(0, VM_REG_GUEST_CR0, 0x21); /* enable protected mode */
	FUNC8(0, VM_REG_GUEST_RBP, 0);
	FUNC8(0, VM_REG_GUEST_RDI, 0);
	FUNC8(0, VM_REG_GUEST_RBX, 0);
	FUNC8(0, VM_REG_GUEST_RFLAGS, 0x2);
	FUNC8(0, VM_REG_GUEST_RSI, BASE_ZEROPAGE);
	FUNC8(0, VM_REG_GUEST_RIP, kernel.base);

	return kernel.base;
}