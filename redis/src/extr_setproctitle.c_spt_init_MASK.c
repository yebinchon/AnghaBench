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
struct TYPE_2__ {char* nul; char* base; char* end; int error; void* arg0; } ;

/* Variables and functions */
 TYPE_1__ SPT ; 
 char** environ ; 
 int errno ; 
 char* FUNC0 () ; 
 char* program_invocation_name ; 
 char* program_invocation_short_name ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (char**) ; 
 void* FUNC4 (char*) ; 
 int FUNC5 (char*) ; 

void FUNC6(int argc, char *argv[]) {
        char **envp = environ;
	char *base, *end, *nul, *tmp;
	int i, error;

	if (!(base = argv[0]))
		return;

	nul = &base[FUNC5(base)];
	end = nul + 1;

	for (i = 0; i < argc || (i >= argc && argv[i]); i++) {
		if (!argv[i] || argv[i] < end)
			continue;

		end = argv[i] + FUNC5(argv[i]) + 1;
	}

	for (i = 0; envp[i]; i++) {
		if (envp[i] < end)
			continue;

		end = envp[i] + FUNC5(envp[i]) + 1;
	}

	if (!(SPT.arg0 = FUNC4(argv[0])))
		goto syerr;

#if __GLIBC__
	if (!(tmp = strdup(program_invocation_name)))
		goto syerr;

	program_invocation_name = tmp;

	if (!(tmp = strdup(program_invocation_short_name)))
		goto syerr;

	program_invocation_short_name = tmp;
#elif __APPLE__
	if (!(tmp = strdup(getprogname())))
		goto syerr;

	setprogname(tmp);
#endif


	if ((error = FUNC3(envp)))
		goto error;

	if ((error = FUNC2(argc, argv)))
		goto error;

	SPT.nul  = nul;
	SPT.base = base;
	SPT.end  = end;

	return;
syerr:
	error = errno;
error:
	SPT.error = error;
}