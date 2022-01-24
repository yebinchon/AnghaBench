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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void
FUNC2 (char *program, int error)
{
    FILE *file = error ? stderr : stdout;
#if HAVE_GETOPT_LONG
    fprintf (file, "usage: %s [-vqVh] [-f FORMAT] [--verbose] [--format=FORMAT] [--quiet] [--version] [--help] text [pattern] {element ...} \n",
	     program);
#else
    FUNC1 (file, "usage: %s [-vqVh] [-f FORMAT] text [pattern] {element ...} \n",
	     program);
#endif
    FUNC1 (file, "List fonts matching [pattern] that can render [text]\n");
    FUNC1 (file, "\n");
#if HAVE_GETOPT_LONG
    fprintf (file, "  -v, --verbose        display entire font pattern verbosely\n");
    fprintf (file, "  -f, --format=FORMAT  use the given output format\n");
    fprintf (file, "  -q, --quiet          suppress all normal output, exit 1 if no fonts matched\n");
    fprintf (file, "  -V, --version        display font config version and exit\n");
    fprintf (file, "  -h, --help           display this help and exit\n");
#else
    FUNC1 (file, "  -v         (verbose) display entire font pattern verbosely\n");
    FUNC1 (file, "  -f FORMAT  (format)  use the given output format\n");
    FUNC1 (file, "  -q,        (quiet)   suppress all normal output, exit 1 if no fonts matched\n");
    FUNC1 (file, "  -V         (version) display HarfBuzz version and exit\n");
    FUNC1 (file, "  -h         (help)    display this help and exit\n");
#endif
    FUNC0 (error);
}