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
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_4__ {int /*<<< orphan*/  firstline; } ;
typedef  TYPE_1__ GCproto ;
typedef  int /*<<< orphan*/  GCfunc ;
typedef  scalar_t__ BCLine ;

/* Variables and functions */
 int LUA_IDSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(lua_State *L, const char *msg,
		     cTValue *frame, cTValue *nextframe)
{
  if (frame) {
    GCfunc *fn = FUNC1(frame);
    if (FUNC3(fn)) {
      BCLine line = FUNC0(L, fn, nextframe);
      if (line >= 0) {
	GCproto *pt = FUNC2(fn);
	char buf[LUA_IDSIZE];
	FUNC4(buf, FUNC6(pt), pt->firstline);
	FUNC5(L, "%s:%d: %s", buf, line, msg);
	return;
      }
    }
  }
  FUNC5(L, "%s", msg);
}