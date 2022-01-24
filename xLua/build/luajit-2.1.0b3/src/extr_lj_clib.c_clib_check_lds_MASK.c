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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (char const*,char) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC4(lua_State *L, const char *buf)
{
  char *p, *e;
  if ((!FUNC3(buf, "GROUP", 5) || !FUNC3(buf, "INPUT", 5)) &&
      (p = FUNC1(buf, '('))) {
    while (*++p == ' ') ;
    for (e = p; *e && *e != ' ' && *e != ')'; e++) ;
    return FUNC2(FUNC0(L, p, e-p));
  }
  return NULL;
}