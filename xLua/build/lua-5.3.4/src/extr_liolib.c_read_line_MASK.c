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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LUAL_BUFFERSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9 (lua_State *L, FILE *f, int chop) {
  luaL_Buffer b;
  int c = '\0';
  FUNC5(L, &b);
  while (c != EOF && c != '\n') {  /* repeat until end of line */
    char *buff = FUNC6(&b);  /* preallocate buffer */
    int i = 0;
    FUNC1(f);  /* no memory errors can happen inside the lock */
    while (i < LUAL_BUFFERSIZE && (c = FUNC0(f)) != EOF && c != '\n')
      buff[i++] = c;
    FUNC2(f);
    FUNC4(&b, i);
  }
  if (!chop && c == '\n')  /* want a newline and have one? */
    FUNC3(&b, c);  /* add ending newline to result */
  FUNC7(&b);  /* close buffer */
  /* return ok if read something (either a newline or something else) */
  return (c == '\n' || FUNC8(L, -1) > 0);
}