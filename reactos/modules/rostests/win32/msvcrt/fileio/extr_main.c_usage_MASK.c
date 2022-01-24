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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(char* argv0)
{
    FUNC0("USAGE: %s test_id [unicode]|[ansi] [clean]|[status][verbose]\n", argv0);
    FUNC0("\tWhere test_id is one of:\n");
    FUNC0("\t0 - (default) regression mode, run tests 1-4 displaying failures only\n");
    FUNC0("\t1 - Write DOS style eol data to file in text mode (text.dos)\n");
    FUNC0("\t2 - Write NIX style eol data to file in binary mode (binary.dos)\n");
    FUNC0("\t3 - Write DOS style eol data to file in text mode (text.nix)\n");
    FUNC0("\t4 - Write NIX style eol data to file in binary mode (binary.nix)\n");
    FUNC0("\t5 - Echo console line input\n");
    FUNC0("\t6 - Dump console line input in hex format\n");
    FUNC0("\t7 - The source code is your friend\n");
    FUNC0("\t[unicode] - perform tests using UNICODE versions of library functions\n");
    FUNC0("\t[ansi] - perform tests using ANSI versions of library functions\n");
    FUNC0("\t    If neither unicode or ansi is specified build default is used\n");
    FUNC0("\t[clean] - delete all temporary test output files\n");
    FUNC0("\t[status] - enable extra status display while running\n");
    FUNC0("\t[verbose] - enable verbose output when running\n");
    return 0;
}