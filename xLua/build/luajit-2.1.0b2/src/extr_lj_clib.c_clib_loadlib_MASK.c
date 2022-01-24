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
 int RTLD_GLOBAL ; 
 int RTLD_LAZY ; 
 int RTLD_LOCAL ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 void* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC8(lua_State *L, const char *name, int global)
{
  void *h = FUNC3(FUNC0(L, name),
		   RTLD_LAZY | (global?RTLD_GLOBAL:RTLD_LOCAL));
  if (!h) {
    const char *e, *err = FUNC2();
    if (*err == '/' && (e = FUNC6(err, ':')) &&
	(name = FUNC1(L, FUNC7(FUNC5(L, err, e-err))))) {
      h = FUNC3(name, RTLD_LAZY | (global?RTLD_GLOBAL:RTLD_LOCAL));
      if (h) return h;
      err = FUNC2();
    }
    FUNC4(L, err);
  }
  return h;
}