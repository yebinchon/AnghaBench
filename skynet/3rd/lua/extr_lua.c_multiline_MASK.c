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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  for (;;) {  /* repeat until gets a complete statement */
    size_t len;
    const char *line = FUNC6(L, 1, &len);  /* get what it has */
    int status = FUNC1(L, line, len, "=stdin");  /* try it */
    if (!FUNC0(L, status) || !FUNC7(L, 0)) {
      FUNC5(L, line);  /* keep history */
      return status;  /* cannot or should not try to add continuation line */
    }
    FUNC4(L, "\n");  /* add newline... */
    FUNC3(L, -2);  /* ...between the two lines */
    FUNC2(L, 3);  /* join them */
  }
}