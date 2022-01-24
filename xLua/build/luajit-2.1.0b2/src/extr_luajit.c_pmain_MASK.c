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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int FUNC1 (char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * globalL ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* progname ; 
 int FUNC14 (int /*<<< orphan*/ *,char**,int) ; 
 struct Smain smain ; 

__attribute__((used)) static int FUNC15(lua_State *L)
{
  struct Smain *s = &smain;
  char **argv = s->argv;
  int script;
  int flags = 0;
  globalL = L;
  if (argv[0] && argv[0][0]) progname = argv[0];
  FUNC0();  /* linker-enforced version check */
  script = FUNC1(argv, &flags);
  if (script < 0) {  /* invalid args? */
    FUNC12();
    s->status = 1;
    return 0;
  }
  if ((flags & FLAGS_NOENV)) {
    FUNC8(L, 1);
    FUNC9(L, LUA_REGISTRYINDEX, "LUA_NOENV");
  }
  FUNC7(L, LUA_GCSTOP, 0);  /* stop collector during initialization */
  FUNC6(L);  /* open libraries */
  FUNC7(L, LUA_GCRESTART, -1);
  if (!(flags & FLAGS_NOENV)) {
    s->status = FUNC4(L);
    if (s->status != 0) return 0;
  }
  if ((flags & FLAGS_VERSION)) FUNC13();
  s->status = FUNC14(L, argv, (script > 0) ? script : s->argc);
  if (s->status != 0) return 0;
  if (script) {
    s->status = FUNC5(L, argv, script);
    if (s->status != 0) return 0;
  }
  if ((flags & FLAGS_INTERACTIVE)) {
    FUNC11(L);
    FUNC3(L);
  } else if (script == 0 && !(flags & (FLAGS_EXEC|FLAGS_VERSION))) {
    if (FUNC10()) {
      FUNC13();
      FUNC11(L);
      FUNC3(L);
    } else {
      FUNC2(L, NULL);  /* executes stdin as a file */
    }
  }
  return 0;
}