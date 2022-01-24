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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_2__ {scalar_t__ rto_sweep; scalar_t__ rto_benchmark; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int SPA_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC1 (int*,char**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb ; 
 char* gdb_tmpl ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int FUNC8 () ; 
 int* rand_data ; 
 TYPE_1__ rto_opts ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sig_handler ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int*,int) ; 

int
FUNC21(int argc, char **argv)
{
	size_t i;
	struct sigaction action;
	int err = 0;

	/* init gdb string early */
	(void) FUNC15(gdb, gdb_tmpl, FUNC3());

	action.sa_handler = sig_handler;
	FUNC14(&action.sa_mask);
	action.sa_flags = 0;

	if (FUNC13(SIGSEGV, &action, NULL) < 0) {
		FUNC0("raidz_test: cannot catch SIGSEGV: %s.\n", FUNC17(errno));
		FUNC2(EXIT_FAILURE);
	}

	(void) FUNC12(stdout, NULL, _IOLBF, 0);

	FUNC1(&argc, argv);

	FUNC7(argc, argv);

	FUNC5(FREAD);

	/* setup random data because rand() is not reentrant */
	rand_data = (int *)FUNC19(SPA_MAXBLOCKSIZE, UMEM_NOFAIL);
	FUNC16((unsigned)FUNC18(NULL) * FUNC3());
	for (i = 0; i < SPA_MAXBLOCKSIZE / sizeof (int); i++)
		rand_data[i] = FUNC8();

	FUNC6(rand_data, SPA_MAXBLOCKSIZE, PROT_READ);

	if (rto_opts.rto_benchmark) {
		FUNC9();
	} else if (rto_opts.rto_sweep) {
		err = FUNC10();
	} else {
		err = FUNC11(NULL);
	}

	FUNC20(rand_data, SPA_MAXBLOCKSIZE);
	FUNC4();

	return (err);
}