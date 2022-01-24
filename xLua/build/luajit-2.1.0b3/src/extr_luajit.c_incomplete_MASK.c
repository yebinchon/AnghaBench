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
 int LUA_ERRSYNTAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 char const* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State *L, int status)
{
  if (status == LUA_ERRSYNTAX) {
    size_t lmsg;
    const char *msg = FUNC2(L, -1, &lmsg);
    const char *tp = msg + lmsg - (sizeof(FUNC0("<eof>")) - 1);
    if (FUNC3(msg, FUNC0("<eof>")) == tp) {
      FUNC1(L, 1);
      return 1;
    }
  }
  return 0;  /* else... */
}