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
 int DEFMAXPENDING ; 
 int MAXMAXPENDING ; 
 int OPT_DEBUG ; 
 int OPT_POLL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* config_text ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(int argc, char *argv[]) {
  int c, opts, maxpending;
  extern char *optarg;
  FILE *inf;

  if (argv[1] && !FUNC14(argv[1],"--",2)) {
    if (!FUNC13(argv[1],"--help")) {
      FUNC11(stdout);
    } else if (!FUNC13(argv[1],"--version")) {
      FUNC8(FUNC0("adnslogres"),stdout);
    } else {
      FUNC15();
    }
    if (FUNC5(stdout) || FUNC4(stdout)) { FUNC10("stdout"); FUNC3(1); }
    FUNC3(0);
  }

  maxpending= DEFMAXPENDING;
  opts= 0;
  while ((c= FUNC9(argc, argv, "c:C:dp")) != -1)
    switch (c) {
    case 'c':
      maxpending= FUNC2(optarg);
      if (maxpending < 1 || maxpending > MAXMAXPENDING) {
       FUNC7(stderr, "%s: unfeasible concurrency %d\n", progname, maxpending);
       FUNC3(1);
      }
      break;
    case 'C':
      config_text= optarg;
      break;
    case 'd':
      opts|= OPT_DEBUG;
      break;
#ifdef HAVE_POLL
    case 'p':
      opts|= OPT_POLL;
      break;
#endif
    default:
      FUNC15();
    }

  argc-= optind;
  argv+= optind;

  inf= NULL;
  if (argc == 0)
    inf= stdin;
  else if (argc == 1)
    inf= FUNC6(*argv, "r");
  else
    FUNC15();

  if (!inf)
    FUNC1("couldn't open input");

  FUNC12(inf, stdout, maxpending, opts);

  if (FUNC4(inf))
    FUNC1("fclose input");
  if (FUNC4(stdout))
    FUNC1("fclose output");

  return 0;
}