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
 int RTLD_LOCAL ; 
 int RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(lua_State *L, const char *path, int gl)
{
  void *lib = FUNC1(path, RTLD_NOW | (gl ? RTLD_GLOBAL : RTLD_LOCAL));
  if (lib == NULL) FUNC2(L, FUNC0());
  return lib;
}