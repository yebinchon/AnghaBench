#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  (* func_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ;
struct TYPE_8__ {char* kernelenv; scalar_t__ cons; int /*<<< orphan*/  userboot; scalar_t__ bootvolume; } ;
struct TYPE_7__ {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 int /*<<< orphan*/  RTLD_LOCAL ; 
 scalar_t__ STDIN_FILENO ; 
 scalar_t__ STDOUT_FILENO ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  USERBOOT_VERSION_3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_5__ config ; 
 scalar_t__ consin_fd ; 
 scalar_t__ consout_fd ; 
 scalar_t__* disk_fd ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 char* FUNC6 () ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,char*) ; 
 int /*<<< orphan*/  exec_done ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * host_base ; 
 int ndisks ; 
 TYPE_1__ oldterm ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ term ; 
 int /*<<< orphan*/  vcpu_rip ; 

uint64_t
FUNC14(void)
{
	void *h;
	int i;
	func_t func;

	host_base = NULL;
	consin_fd = STDIN_FILENO;
	consout_fd = STDOUT_FILENO;

	if (config.cons) {
		FUNC1(config.cons);
	}

	if (config.bootvolume) {
		FUNC5(config.bootvolume);
	} else {
		FUNC10(stderr, "fbsd: no boot volume\n");
		FUNC9(-1);
	}

	if (config.kernelenv) {
		FUNC0(config.kernelenv);
	}

	//host_base = optarg h

	FUNC12(consout_fd, &term);
	oldterm = term;
	FUNC3(&term);
	term.c_cflag |= CLOCAL;
	
	FUNC13(consout_fd, TCSAFLUSH, &term);

	h = FUNC7(config.userboot, RTLD_LOCAL);
	if (!h) {
		FUNC10(stderr, "%s\n", FUNC6());
		FUNC9(-1);
	}

	func = (func_t) FUNC8(h, "loader_main");
	if (!func) {
		FUNC10(stderr, "%s\n", FUNC6());
		FUNC9(-1);
	}

	FUNC0("smbios.bios.vendor=BHYVE");
	FUNC0("boot_serial=1");

	if (!FUNC11(exec_done)) {
		func(&cb, NULL, USERBOOT_VERSION_3, ndisks);
	}

	for (i = 0; i < ndisks; i++) {
		FUNC4(disk_fd[i]);
	}

	if (config.cons) {
		FUNC2(consin_fd == consout_fd);
		FUNC4(consin_fd);
	}

	return vcpu_rip;
}