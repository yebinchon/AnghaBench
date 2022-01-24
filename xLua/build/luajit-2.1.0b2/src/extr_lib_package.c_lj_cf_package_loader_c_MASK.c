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
 char* FUNC0 (int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(lua_State *L)
{
  const char *name = FUNC3(L, 1);
  const char *filename = FUNC0(L, name, "cpath");
  if (filename == NULL) return 1;  /* library not found in this path */
  if (FUNC1(L, filename, name, 0) != 0)
    FUNC2(L, filename);
  return 1;  /* library loaded successfully */
}