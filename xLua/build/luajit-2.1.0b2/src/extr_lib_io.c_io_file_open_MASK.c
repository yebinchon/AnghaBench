#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/ * fp; } ;
typedef  TYPE_1__ IOFileUD ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static IOFileUD *FUNC7(lua_State *L, const char *mode)
{
  const char *fname = FUNC5(FUNC2(L, 1));
  IOFileUD *iof = FUNC1(L);
  iof->fp = FUNC0(fname, mode);
  if (iof->fp == NULL)
    FUNC4(L, 1, FUNC3(L, "%s: %s", fname, FUNC6(errno)));
  return iof;
}