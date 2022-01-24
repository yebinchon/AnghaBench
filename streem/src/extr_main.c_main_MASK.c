#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_array ;
struct TYPE_8__ {int /*<<< orphan*/  lval; } ;
typedef  TYPE_1__ parser_state ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* strm_option_verbose ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int
FUNC18(int argc, const char**argv)
{
  const char *prog = argv[0];
  const char *e_prog = NULL;
  int i, n = 0, verbose = FALSE, check = FALSE;
  parser_state state;

  while (argc > 1 && argv[1][0] == '-') {
    const char *s = argv[1]+1;
    while (*s) {
      switch (*s) {
      case 'v':
        verbose = TRUE;
        /* fall through */
      case 'w':
        strm_option_verbose = TRUE;
        break;
      case 'c':
        check = TRUE;
        break;
      case 'e':
        if (s[1] == '\0') {
          e_prog = argv[2];
          argc--; argv++;
        }
        else {
          e_prog = &s[1];
        }
        goto next_arg;
      default:
        FUNC1(stderr, "%s: unknown option -%c\n", prog, *s);
      }
      s++;
    }
  next_arg:
    argc--; argv++;
  }
  FUNC4(&state);

  if (e_prog) {
    n += FUNC6(&state, e_prog);
  }
  else if (argc == 1) {              /* no args */
    n = FUNC5(&state, stdin, "stdin");
  }
  else {
    for (i=1; i<argc; i++) {
      n += FUNC2(&state, argv[i]);
    }
  }

  if (n == 0) {
    if (verbose) {
      FUNC0(state.lval, 0);
    }
    if (check) {
      FUNC9("Syntax OK");
    }
    else {
      strm_array av = FUNC11(NULL, argc);
      strm_value* buf = FUNC12(av);
      int i;

      for (i=0; i<argc; i++) {
        buf[i] = FUNC16(FUNC15(argv[i], FUNC10(argv[i])));
      }
      FUNC17(NULL, "ARGV", FUNC13(av));
      FUNC7(&state);
      FUNC14();
      FUNC8();
    }
  }
  else if (check) {
    FUNC9("Syntax NG");
  }
  FUNC3(&state);
  return n > 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}