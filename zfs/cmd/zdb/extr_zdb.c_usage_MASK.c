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
 char* cmdname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	(void) FUNC1(stderr,
	    "Usage:\t%s [-AbcdDFGhikLMPsvX] [-e [-V] [-p <path> ...]] "
	    "[-I <inflight I/Os>]\n"
	    "\t\t[-o <var>=<value>]... [-t <txg>] [-U <cache>] [-x <dumpdir>]\n"
	    "\t\t[<poolname> [<object> ...]]\n"
	    "\t%s [-AdiPv] [-e [-V] [-p <path> ...]] [-U <cache>] <dataset>\n"
	    "\t\t[<object> ...]\n"
	    "\t%s [-v] <bookmark>\n"
	    "\t%s -C [-A] [-U <cache>]\n"
	    "\t%s -l [-Aqu] <device>\n"
	    "\t%s -m [-AFLPX] [-e [-V] [-p <path> ...]] [-t <txg>] "
	    "[-U <cache>]\n\t\t<poolname> [<vdev> [<metaslab> ...]]\n"
	    "\t%s -O <dataset> <path>\n"
	    "\t%s -R [-A] [-e [-V] [-p <path> ...]] [-U <cache>]\n"
	    "\t\t<poolname> <vdev>:<offset>:<size>[:<flags>]\n"
	    "\t%s -E [-A] word0:word1:...:word15\n"
	    "\t%s -S [-AP] [-e [-V] [-p <path> ...]] [-U <cache>] "
	    "<poolname>\n\n",
	    cmdname, cmdname, cmdname, cmdname, cmdname, cmdname, cmdname,
	    cmdname, cmdname, cmdname);

	(void) FUNC1(stderr, "    Dataset name must include at least one "
	    "separator character '/' or '@'\n");
	(void) FUNC1(stderr, "    If dataset name is specified, only that "
	    "dataset is dumped\n");
	(void) FUNC1(stderr, "    If object numbers are specified, only "
	    "those objects are dumped\n\n");
	(void) FUNC1(stderr, "    Options to control amount of output:\n");
	(void) FUNC1(stderr, "        -b block statistics\n");
	(void) FUNC1(stderr, "        -c checksum all metadata (twice for "
	    "all data) blocks\n");
	(void) FUNC1(stderr, "        -C config (or cachefile if alone)\n");
	(void) FUNC1(stderr, "        -d dataset(s)\n");
	(void) FUNC1(stderr, "        -D dedup statistics\n");
	(void) FUNC1(stderr, "        -E decode and display block from an "
	    "embedded block pointer\n");
	(void) FUNC1(stderr, "        -h pool history\n");
	(void) FUNC1(stderr, "        -i intent logs\n");
	(void) FUNC1(stderr, "        -l read label contents\n");
	(void) FUNC1(stderr, "        -k examine the checkpointed state "
	    "of the pool\n");
	(void) FUNC1(stderr, "        -L disable leak tracking (do not "
	    "load spacemaps)\n");
	(void) FUNC1(stderr, "        -m metaslabs\n");
	(void) FUNC1(stderr, "        -M metaslab groups\n");
	(void) FUNC1(stderr, "        -O perform object lookups by path\n");
	(void) FUNC1(stderr, "        -R read and display block from a "
	    "device\n");
	(void) FUNC1(stderr, "        -s report stats on zdb's I/O\n");
	(void) FUNC1(stderr, "        -S simulate dedup to measure effect\n");
	(void) FUNC1(stderr, "        -v verbose (applies to all "
	    "others)\n\n");
	(void) FUNC1(stderr, "    Below options are intended for use "
	    "with other options:\n");
	(void) FUNC1(stderr, "        -A ignore assertions (-A), enable "
	    "panic recovery (-AA) or both (-AAA)\n");
	(void) FUNC1(stderr, "        -e pool is exported/destroyed/"
	    "has altroot/not in a cachefile\n");
	(void) FUNC1(stderr, "        -F attempt automatic rewind within "
	    "safe range of transaction groups\n");
	(void) FUNC1(stderr, "        -G dump zfs_dbgmsg buffer before "
	    "exiting\n");
	(void) FUNC1(stderr, "        -I <number of inflight I/Os> -- "
	    "specify the maximum number of\n           "
	    "checksumming I/Os [default is 200]\n");
	(void) FUNC1(stderr, "        -o <variable>=<value> set global "
	    "variable to an unsigned 32-bit integer\n");
	(void) FUNC1(stderr, "        -p <path> -- use one or more with "
	    "-e to specify path to vdev dir\n");
	(void) FUNC1(stderr, "        -P print numbers in parseable form\n");
	(void) FUNC1(stderr, "        -q don't print label contents\n");
	(void) FUNC1(stderr, "        -t <txg> -- highest txg to use when "
	    "searching for uberblocks\n");
	(void) FUNC1(stderr, "        -u uberblock\n");
	(void) FUNC1(stderr, "        -U <cachefile_path> -- use alternate "
	    "cachefile\n");
	(void) FUNC1(stderr, "        -V do verbatim import\n");
	(void) FUNC1(stderr, "        -x <dumpdir> -- "
	    "dump all read blocks into specified directory\n");
	(void) FUNC1(stderr, "        -X attempt extreme rewind (does not "
	    "work with dataset)\n");
	(void) FUNC1(stderr, "        -Y attempt all reconstruction "
	    "combinations for split blocks\n");
	(void) FUNC1(stderr, "Specify an option more than once (e.g. -bb) "
	    "to make only that option verbose\n");
	(void) FUNC1(stderr, "Default is to dump everything non-verbosely\n");
	FUNC0(1);
}