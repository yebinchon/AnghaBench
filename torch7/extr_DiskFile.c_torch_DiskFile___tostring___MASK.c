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
typedef  int /*<<< orphan*/  THFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char,char) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
  THFile *self = FUNC4(L, 1, "torch.DiskFile");
  FUNC5(L, "torch.DiskFile on <%s> [status: %s -- mode %c%c]",
                  FUNC0(self),
                  (FUNC1(self) ? "open" : "closed"),
                  (FUNC2(self) ? 'r' : ' '),
                  (FUNC3(self) ? 'w' : ' '));

  return 1;
}