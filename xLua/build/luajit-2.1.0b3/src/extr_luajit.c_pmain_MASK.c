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
struct Smain {char** argv; int status; int argc; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FLAGS_EXEC ; 
 int FLAGS_INTERACTIVE ; 
 int FLAGS_NOENV ; 
 int FLAGS_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 int LUA_OK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int FUNC1 (char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * globalL ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* progname ; 
 int FUNC15 (int /*<<< orphan*/ *,char**,int) ; 
 struct Smain smain ; 

__attribute__((used)) static int FUNC16(lua_State *L)
{
  struct Smain *s = &smain;
  char **argv = s->argv;
  int argn;
  int flags = 0;
  globalL = L;
  if (argv[0] && argv[0][0]) progname = argv[0];

  FUNC0();  /* Linker-enforced version check. */

  argn = FUNC1(argv, &flags);
  if (argn < 0) {  /* Invalid args? */
    FUNC13();
    s->status = 1;
    return 0;
  }

  if ((flags & FLAGS_NOENV)) {
    FUNC9(L, 1);
    FUNC10(L, LUA_REGISTRYINDEX, "LUA_NOENV");
  }

  /* Stop collector during library initialization. */
  FUNC8(L, LUA_GCSTOP, 0);
  FUNC7(L);
  FUNC8(L, LUA_GCRESTART, -1);

  FUNC2(L, argv, s->argc, argn);

  if (!(flags & FLAGS_NOENV)) {
    s->status = FUNC5(L);
    if (s->status != LUA_OK) return 0;
  }

  if ((flags & FLAGS_VERSION)) FUNC14();

  s->status = FUNC15(L, argv, argn);
  if (s->status != LUA_OK) return 0;

  if (s->argc > argn) {
    s->status = FUNC6(L, argv + argn);
    if (s->status != LUA_OK) return 0;
  }

  if ((flags & FLAGS_INTERACTIVE)) {
    FUNC12(L);
    FUNC4(L);
  } else if (s->argc == argn && !(flags & (FLAGS_EXEC|FLAGS_VERSION))) {
    if (FUNC11()) {
      FUNC14();
      FUNC12(L);
      FUNC4(L);
    } else {
      FUNC3(L, NULL);  /* Executes stdin as a file. */
    }
  }
  return 0;
}