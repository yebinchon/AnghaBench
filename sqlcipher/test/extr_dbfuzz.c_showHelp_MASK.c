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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(const char *zArgv0){
  FUNC1("Usage: %s [options] DATABASE ...\n", zArgv0);
  FUNC1(
"Read databases into an in-memory filesystem.  Run test SQL as specified\n"
"by command-line arguments or from\n"
"\n"
"    SELECT group_concat(sql) FROM autoexec;\n"
"\n"
"Options:\n"
"  --help              Show this help text\n"
"  -q|--quiet          Reduced output\n"
"  --limit-mem N       Limit memory used by test SQLite instances to N bytes\n"
"  --limit-vdbe        Panic if any test runs for more than 100,000 cycles\n"
"  --no-lookaside      Disable the lookaside memory allocator\n"
"  --timeout N         Timeout after N seconds.\n"
"  --trace             Show the results of each SQL command\n"
"  -v|--verbose        Increased output.  Repeat for more output.\n"
  );
  FUNC0(0);
}