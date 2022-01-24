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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_OK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int FUNC0 (char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char**) ; 
 int has_E ; 
 int has_e ; 
 int has_error ; 
 int has_i ; 
 int has_v ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char**,int) ; 

__attribute__((used)) static int FUNC16 (lua_State *L) {
  int argc = (int)FUNC11(L, 1);
  char **argv = (char **)FUNC12(L, 2);
  int script;
  int args = FUNC0(argv, &script);
  FUNC6(L);  /* check that interpreter has correct version */
  if (argv[0] && argv[0][0]) progname = argv[0];
  if (args == has_error) {  /* bad arg? */
    FUNC13(argv[script]);  /* 'script' has index of bad arg. */
    return 0;
  }
  if (args & has_v)  /* option '-v'? */
    FUNC14();
  if (args & has_E) {  /* option '-E'? */
    FUNC8(L, 1);  /* signal for libraries to ignore env. vars. */
    FUNC9(L, LUA_REGISTRYINDEX, "LUA_NOENV");
  }
  FUNC7(L);  /* open standard libraries */
  FUNC1(L, argv, argc, script);  /* create table 'arg' */
  if (!(args & has_E)) {  /* no option '-E'? */
    if (FUNC4(L) != LUA_OK)  /* run LUA_INIT */
      return 0;  /* error running LUA_INIT */
  }
  if (!FUNC15(L, argv, script))  /* execute arguments -e and -l */
    return 0;  /* something failed */
  if (script < argc &&  /* execute main script (if there is one) */
      FUNC5(L, argv + script) != LUA_OK)
    return 0;
  if (args & has_i)  /* -i option? */
    FUNC2(L);  /* do read-eval-print loop */
  else if (script == argc && !(args & (has_e | has_v))) {  /* no arguments? */
    if (FUNC10()) {  /* running in interactive mode? */
      FUNC14();
      FUNC2(L);  /* do read-eval-print loop */
    }
    else FUNC3(L, NULL);  /* executes stdin as a file */
  }
  FUNC8(L, 1);  /* signal no errors */
  return 1;
}