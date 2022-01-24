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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DEFAULT_VERBOSITY ; 
 char* KILL_PROCESS_GROUP_GROUP_ENV_VAR ; 
 char* SUBREAPER_ENV_VAR ; 
 char* TINI_VERSION_STRING ; 
 char* VERBOSITY_ENV_VAR ; 
 char* FUNC0 (char* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,char*,...) ; 

void FUNC2(char* const name, FILE* const file) {
	FUNC1(file, "%s (%s)\n", FUNC0(name), TINI_VERSION_STRING);

#if TINI_MINIMAL
	fprintf(file, "Usage: %s PROGRAM [ARGS] | --version\n\n", basename(name));
#else
	FUNC1(file, "Usage: %s [OPTIONS] PROGRAM -- [ARGS] | --version\n\n", FUNC0(name));
#endif
	FUNC1(file, "Execute a program under the supervision of a valid init process (%s)\n\n", FUNC0(name));

	FUNC1(file, "Command line options:\n\n");

	FUNC1(file, "  --version: Show version and exit.\n");

#if TINI_MINIMAL
#else
	FUNC1(file, "  -h: Show this help message and exit.\n");
#if HAS_SUBREAPER
	fprintf(file, "  -s: Register as a process subreaper (requires Linux >= 3.4).\n");
#endif
	FUNC1(file, "  -p SIGNAL: Trigger SIGNAL when parent dies, e.g. \"-p SIGKILL\".\n");
	FUNC1(file, "  -v: Generate more verbose output. Repeat up to 3 times.\n");
	FUNC1(file, "  -w: Print a warning when processes are getting reaped.\n");
	FUNC1(file, "  -g: Send signals to the child's process group.\n");
	FUNC1(file, "  -e EXIT_CODE: Remap EXIT_CODE (from 0 to 255) to 0.\n");
	FUNC1(file, "  -l: Show license and exit.\n");
#endif

	FUNC1(file, "\n");

	FUNC1(file, "Environment variables:\n\n");
#if HAS_SUBREAPER
	fprintf(file, "  %s: Register as a process subreaper (requires Linux >= 3.4).\n", SUBREAPER_ENV_VAR);
#endif
	FUNC1(file, "  %s: Set the verbosity level (default: %d).\n", VERBOSITY_ENV_VAR, DEFAULT_VERBOSITY);
	FUNC1(file, "  %s: Send signals to the child's process group.\n", KILL_PROCESS_GROUP_GROUP_ENV_VAR);

	FUNC1(file, "\n");
}