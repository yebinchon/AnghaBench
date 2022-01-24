#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  namewhat; int /*<<< orphan*/  name; int /*<<< orphan*/  nups; int /*<<< orphan*/  currentline; int /*<<< orphan*/  what; int /*<<< orphan*/  lastlinedefined; int /*<<< orphan*/  linedefined; int /*<<< orphan*/  short_src; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char const*,float) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC18 (lua_State *L) {
  lua_Debug ar;
  int arg;
  lua_State *L1 = FUNC0(L, &arg);
  const char *options = FUNC2(L, arg+2, "flnSu");
  if (FUNC7(L, arg+1)) {
    if (!FUNC5(L1, (int)FUNC11(L, arg+1), &ar)) {
      FUNC9(L);  /* level out of range */
      return 1;
    }
  }
  else if (FUNC6(L, arg+1)) {
    FUNC8(L, ">%s", options);
    options = FUNC12(L, -1);
    FUNC10(L, arg+1);
    FUNC13(L, L1, 1);
  }
  else
    return FUNC1(L, arg+1, "function or level expected");
  if (!FUNC4(L1, options, &ar))
    return FUNC1(L, arg+2, "invalid option");
  FUNC3(L, 0, 2);
  if (FUNC16(options, 'S')) {
    FUNC15(L, "source", ar.source);
    FUNC15(L, "short_src", ar.short_src);
    FUNC14(L, "linedefined", ar.linedefined);
    FUNC14(L, "lastlinedefined", ar.lastlinedefined);
    FUNC15(L, "what", ar.what);
  }
  if (FUNC16(options, 'l'))
    FUNC14(L, "currentline", ar.currentline);
  if (FUNC16(options, 'u'))
    FUNC14(L, "nups", ar.nups);
  if (FUNC16(options, 'n')) {
    FUNC15(L, "name", ar.name);
    FUNC15(L, "namewhat", ar.namewhat);
  }
  if (FUNC16(options, 'L'))
    FUNC17(L, L1, "activelines");
  if (FUNC16(options, 'f'))
    FUNC17(L, L1, "func");
  return 1;  /* return table */
}