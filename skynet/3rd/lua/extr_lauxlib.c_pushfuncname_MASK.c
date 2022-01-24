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
struct TYPE_4__ {char* namewhat; char* what; char* short_src; int /*<<< orphan*/  linedefined; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, lua_Debug *ar) {
  if (FUNC4(L, ar)) {  /* try first a global name */
    FUNC0(L, "function '%s'", FUNC3(L, -1));
    FUNC2(L, -2);  /* remove name */
  }
  else if (*ar->namewhat != '\0')  /* is there a name from code? */
    FUNC0(L, "%s '%s'", ar->namewhat, ar->name);  /* use it */
  else if (*ar->what == 'm')  /* main? */
      FUNC1(L, "main chunk");
  else if (*ar->what != 'C')  /* for Lua functions, use <file:line> */
    FUNC0(L, "function <%s:%d>", ar->short_src, ar->linedefined);
  else  /* nothing left... */
    FUNC1(L, "?");
}