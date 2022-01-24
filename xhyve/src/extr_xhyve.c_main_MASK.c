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
 int /*<<< orphan*/  BSP ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int MB ; 
 int /*<<< orphan*/  VM_MMAP_ALL ; 
 int acpi ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC9 (int,char**,char*) ; 
 int guest_ncpus ; 
 void* guest_uuid_str ; 
 int guest_vmexit_on_hlt ; 
 int guest_vmexit_on_pause ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int) ; 
 int FUNC21 () ; 
 void* optarg ; 
 int FUNC22 (void*,size_t*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 void* pidfile ; 
 int print_mac ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int FUNC29 () ; 
 int /*<<< orphan*/  stderr ; 
 int strictio ; 
 int /*<<< orphan*/  strictmsr ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  virtio_msix ; 
 int x2apic_mode ; 
 int FUNC32 () ; 
 int FUNC33 (size_t,int /*<<< orphan*/ ) ; 

int
FUNC34(int argc, char *argv[])
{
	int c, error, gdb_port, bvmcons, fw;
	int dump_guest_memory, max_vcpus, mptgen;
	int rtc_localtime;
	uint64_t rip;
	size_t memsize;

	bvmcons = 0;
	dump_guest_memory = 0;
	progname = FUNC4(argv[0]);
	gdb_port = 0;
	guest_ncpus = 1;
	print_mac = 0;
	memsize = 256 * MB;
	mptgen = 1;
	rtc_localtime = 1;
	fw = 0;

	while ((c = FUNC9(argc, argv, "behvuwxMACHPWY:f:F:g:c:s:m:l:U:")) != -1) {
		switch (c) {
		case 'A':
			acpi = 1;
			break;
		case 'b':
			bvmcons = 1;
			break;
		case 'c':
			guest_ncpus = FUNC3(optarg);
			break;
		case 'C':
			dump_guest_memory = 1;
			break;
		case 'f':
			if (FUNC7(optarg) != 0) {
				FUNC6 (1);
			} else {
				fw = 1;
				break;
			}
		case 'F':
			pidfile = optarg;
			break;
		case 'g':
			gdb_port = FUNC3(optarg);
			break;
		case 'l':
			if (FUNC18(optarg) != 0) {
				FUNC5(EX_USAGE, "invalid lpc device "
				    "configuration '%s'", optarg);
			}
			break;
		case 's':
			if (FUNC24(optarg) != 0)
				FUNC6(1);
			else
				break;
		case 'm':
			error = FUNC22(optarg, &memsize);
			if (error)
				FUNC5(EX_USAGE, "invalid memsize '%s'", optarg);
			break;
		case 'M':
			print_mac = 1;
			break;
		case 'H':
			guest_vmexit_on_hlt = 1;
			break;
		case 'P':
			guest_vmexit_on_pause = 1;
			break;
		case 'e':
			strictio = 1;
			break;
		case 'u':
			rtc_localtime = 0;
			break;
		case 'U':
			guest_uuid_str = optarg;
			break;
		case 'w':
			strictmsr = 0;
			break;
		case 'W':
			virtio_msix = 0;
			break;
		case 'x':
			x2apic_mode = 1;
			break;
		case 'Y':
			mptgen = 0;
			break;
		case 'v':
			FUNC28();
		case 'h':
			FUNC30(0);
		default:
			FUNC30(1);
		}
	}

	if ((fw != 1) && (FUNC17() == NULL))
		FUNC30(1);

	error = FUNC32();
	if (error) {
		FUNC8(stderr, "Unable to create VM (%d)\n", error);
		FUNC6(1);
	}

	if (guest_ncpus < 1) {
		FUNC8(stderr, "Invalid guest vCPUs (%d)\n", guest_ncpus);
		FUNC6(1);
	}

	max_vcpus = FUNC21();
	if (guest_ncpus > max_vcpus) {
		FUNC8(stderr, "%d vCPUs requested but only %d available\n",
			guest_ncpus, max_vcpus);
		FUNC6(1);
	}

	error = FUNC33(memsize, VM_MMAP_ALL);
	if (error) {
		FUNC8(stderr, "Unable to setup memory (%d)\n", error);
		FUNC6(1);
	}

	error = FUNC14();
	if (error) {
		FUNC8(stderr, "init_msr error %d\n", error);
		FUNC6(1);
	}

	error = FUNC27();
	if (error) {
		FUNC8(stderr, "pidfile error %d\n", error);
		FUNC6(1);
	}

	FUNC13();
	FUNC12();
    FUNC2();
	FUNC23();
	FUNC16();

	FUNC25(rtc_localtime);
	FUNC26();

	/*
	 * Exit if a device emulation finds an error in it's initilization
	 */
	if (FUNC15() != 0)
		FUNC6(1);

	if (gdb_port != 0)
		FUNC11(gdb_port);

	if (bvmcons)
		FUNC10();

	/*
	 * build the guest tables, MP etc.
	 */
	if (mptgen) {
		error = FUNC20(guest_ncpus);
		if (error)
			FUNC6(1);
	}

	error = FUNC29();
	FUNC1(error == 0);

	if (acpi) {
		error = FUNC0(guest_ncpus);
		FUNC1(error == 0);
	}

	rip = 0;

	FUNC31(BSP, BSP, rip);

	/*
	 * Head off to the main event dispatch loop
	 */
	FUNC19();

	FUNC6(1);
}