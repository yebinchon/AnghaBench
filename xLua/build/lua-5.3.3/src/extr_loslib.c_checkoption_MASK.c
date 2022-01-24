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
 char* LUA_STRFTIMEOPTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static const char *FUNC4 (lua_State *L, const char *conv, char *buff) {
  const char *option;
  int oplen = 1;
  for (option = LUA_STRFTIMEOPTIONS; *option != '\0'; option += oplen) {
    if (*option == '|')  /* next block? */
      oplen++;  /* next length */
    else if (FUNC2(conv, option, oplen) == 0) {  /* match? */
      FUNC3(buff, conv, oplen);  /* copy valid option to buffer */
      buff[oplen] = '\0';
      return conv + oplen;  /* return next item */
    }
  }
  FUNC0(L, 1,
    FUNC1(L, "invalid conversion specifier '%%%s'", conv));
  return conv;  /* to avoid warnings */
}