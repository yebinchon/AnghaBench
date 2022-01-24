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
 int FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(lua_State *L, int ud, const char *tname)
{
  const char *msg;
  const char *tnameud = FUNC1(L, ud);

  if(!tnameud)
    tnameud = FUNC3(L, ud);

  msg = FUNC2(L, "%s expected, got %s",
                        tname,
                        (tnameud ? tnameud : "unknown object"));

  return FUNC0(L, ud, msg);
}