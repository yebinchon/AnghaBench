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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 double FUNC4 (int /*<<< orphan*/ *,int) ; 

double FUNC5(lua_State *L, int ud, const char *field)
{
  FUNC1(L, ud, field);
  if(FUNC2(L, -1))
    FUNC0(L, "bad argument #%d (field %s does not exist)", ud, field);
  if(!FUNC3(L, -1))
    FUNC0(L, "bad argument #%d (field %s is not a number)", ud, field);
  return FUNC4(L, -1);
}