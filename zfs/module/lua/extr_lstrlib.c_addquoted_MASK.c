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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char const) ; 

__attribute__((used)) static void FUNC7 (lua_State *L, luaL_Buffer *b, int arg) {
  size_t l;
  const char *s = FUNC4(L, arg, &l);
  FUNC2(b, '"');
  while (l--) {
    if (*s == '"' || *s == '\\' || *s == '\n') {
      FUNC2(b, '\\');
      FUNC2(b, *s);
    }
    else if (*s == '\0' || FUNC0(FUNC6(*s))) {
      char buff[10];
      if (!FUNC1(FUNC6(*(s+1))))
        FUNC5(buff, "\\%d", (int)FUNC6(*s));
      else
        FUNC5(buff, "\\%03d", (int)FUNC6(*s));
      FUNC3(b, buff);
    }
    else
      FUNC2(b, *s);
    s++;
  }
  FUNC2(b, '"');
}