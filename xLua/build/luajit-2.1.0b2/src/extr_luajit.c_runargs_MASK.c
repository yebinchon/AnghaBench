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
 int FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(lua_State *L, char **argv, int n)
{
  int i;
  for (i = 1; i < n; i++) {
    if (argv[i] == NULL) continue;
    FUNC5(argv[i][0] == '-');
    switch (argv[i][1]) {  /* option */
    case 'e': {
      const char *chunk = argv[i] + 2;
      if (*chunk == '\0') chunk = argv[++i];
      FUNC5(chunk != NULL);
      if (FUNC4(L, chunk, "=(command line)") != 0)
	return 1;
      break;
      }
    case 'l': {
      const char *filename = argv[i] + 2;
      if (*filename == '\0') filename = argv[++i];
      FUNC5(filename != NULL);
      if (FUNC3(L, filename))
	return 1;  /* stop if file fails */
      break;
      }
    case 'j': {  /* LuaJIT extension */
      const char *cmd = argv[i] + 2;
      if (*cmd == '\0') cmd = argv[++i];
      FUNC5(cmd != NULL);
      if (FUNC1(L, cmd))
	return 1;
      break;
      }
    case 'O':  /* LuaJIT extension */
      if (FUNC2(L, argv[i] + 2))
	return 1;
      break;
    case 'b':  /* LuaJIT extension */
      return FUNC0(L, argv+i);
    default: break;
    }
  }
  return 0;
}