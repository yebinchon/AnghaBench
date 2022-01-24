#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  stack; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_10__ {scalar_t__ sizebc; } ;
typedef  scalar_t__ MMS ;
typedef  TYPE_2__ GCproto ;
typedef  int /*<<< orphan*/  GCfunc ;
typedef  int BCReg ;
typedef  scalar_t__ BCPos ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ BC_ITERC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int LJ_FR2 ; 
 scalar_t__ MM__MAX ; 
 scalar_t__ MM_call ; 
 scalar_t__ NO_BCPOS ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 size_t FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 
 char const* FUNC11 (TYPE_2__*,int /*<<< orphan*/  const*,int,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 

const char *FUNC16(lua_State *L, cTValue *frame, const char **name)
{
  cTValue *pframe;
  GCfunc *fn;
  BCPos pc;
  if (frame <= FUNC15(L->stack)+LJ_FR2)
    return NULL;
  if (FUNC7(frame))
    frame = FUNC9(frame);
  pframe = FUNC8(frame);
  fn = FUNC6(pframe);
  pc = FUNC5(L, fn, frame);
  if (pc != NO_BCPOS) {
    GCproto *pt = FUNC10(fn);
    const BCIns *ip = &FUNC13(pt)[FUNC4(pc < pt->sizebc, pc)];
    MMS mm = FUNC3(FUNC2(*ip));
    if (mm == MM_call) {
      BCReg slot = FUNC1(*ip);
      if (FUNC2(*ip) == BC_ITERC) slot -= 3;
      return FUNC11(pt, ip, slot, name);
    } else if (mm != MM__MAX) {
      *name = FUNC14(FUNC12(FUNC0(L), mm));
      return "metamethod";
    }
  }
  return NULL;
}