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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  READ_BINARY ; 
 int FUNC0 (char***) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/ * infile ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 scalar_t__* progname ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10 (int argc, char **argv)
{
  int argn;
  char * arg;
  int verbose = 0, raw = 0;

  /* On Mac, fetch a command line. */
#ifdef USE_CCOMMAND
  argc = ccommand(&argv);
#endif

  progname = argv[0];
  if (progname == NULL || progname[0] == 0)
    progname = "rdjpgcom";	/* in case C library doesn't provide it */

  /* Parse switches, if any */
  for (argn = 1; argn < argc; argn++) {
    arg = argv[argn];
    if (arg[0] != '-')
      break;			/* not switch, must be file name */
    arg++;			/* advance over '-' */
    if (FUNC6(arg, "verbose", 1)) {
      verbose++;
    } else if (FUNC6(arg, "raw", 1)) {
      raw = 1;
    } else
      FUNC9();
  }

  /* Open the input file. */
  /* Unix style: expect zero or one file name */
  if (argn < argc-1) {
    FUNC5(stderr, "%s: only one input file\n", progname);
    FUNC9();
  }
  if (argn < argc) {
    if ((infile = FUNC4(argv[argn], READ_BINARY)) == NULL) {
      FUNC5(stderr, "%s: can't open %s\n", progname, argv[argn]);
      FUNC1(EXIT_FAILURE);
    }
  } else {
    /* default input file is stdin */
#ifdef USE_SETMODE		/* need to hack file mode? */
    setmode(fileno(stdin), O_BINARY);
#endif
#ifdef USE_FDOPEN		/* need to re-open in binary mode? */
    if ((infile = fdopen(fileno(stdin), READ_BINARY)) == NULL) {
      fprintf(stderr, "%s: can't open stdin\n", progname);
      exit(EXIT_FAILURE);
    }
#else
    infile = stdin;
#endif
  }

  /* Scan the JPEG headers. */
  (void) FUNC7(verbose, raw);

  /* All done. */
  FUNC1(EXIT_SUCCESS);
  return 0;			/* suppress no-return-value warnings */
}