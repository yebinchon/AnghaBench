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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  progname ; 

__attribute__((used)) static int FUNC4(lua_State *L, int status)
{
  if (status && !FUNC1(L, -1)) {
    const char *msg = FUNC3(L, -1);
    if (msg == NULL) msg = "(error object is not a string)";
    FUNC0(progname, msg);
    FUNC2(L, 1);
  }
  return status;
}