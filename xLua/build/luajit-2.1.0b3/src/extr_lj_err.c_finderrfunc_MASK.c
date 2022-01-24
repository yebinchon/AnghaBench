#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ptrdiff_t ;
struct TYPE_8__ {void* cframe; int /*<<< orphan*/  stack; int /*<<< orphan*/ * base; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_7__ {int /*<<< orphan*/  ffid; } ;
struct TYPE_9__ {TYPE_1__ c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF_xpcall ; 
#define  FRAME_C 135 
#define  FRAME_CONT 134 
#define  FRAME_CP 133 
#define  FRAME_LUA 132 
#define  FRAME_LUAP 131 
#define  FRAME_PCALL 130 
#define  FRAME_PCALLH 129 
#define  FRAME_VARG 128 
 int LJ_FR2 ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptrdiff_t FUNC14(lua_State *L)
{
  cTValue *frame = L->base-1, *bot = FUNC13(L->stack)+LJ_FR2;
  void *cf = L->cframe;
  while (frame > bot && cf) {
    while (FUNC2(FUNC4(cf)) < 0) {  /* cframe without frame? */
      if (frame >= FUNC11(L, -FUNC2(cf)))
	break;
      if (FUNC1(cf) >= 0)  /* Error handler not inherited (-1)? */
	return FUNC1(cf);
      cf = FUNC3(cf);  /* Else unwind cframe and continue searching. */
      if (cf == NULL)
	return 0;
    }
    switch (FUNC9(frame)) {
    case FRAME_LUA:
    case FRAME_LUAP:
      frame = FUNC8(frame);
      break;
    case FRAME_C:
      cf = FUNC3(cf);
      /* fallthrough */
    case FRAME_VARG:
      frame = FUNC7(frame);
      break;
    case FRAME_CONT:
      if (FUNC6(frame))
	cf = FUNC3(cf);
      frame = FUNC7(frame);
      break;
    case FRAME_CP:
      if (FUNC0(cf)) return 0;
      if (FUNC1(cf) >= 0)
	return FUNC1(cf);
      frame = FUNC7(frame);
      break;
    case FRAME_PCALL:
    case FRAME_PCALLH:
      if (FUNC5(FUNC7(frame))->c.ffid == FF_xpcall)
	return FUNC12(L, *(FUNC7(frame)+1));  /* xpcall's errorfunc. */
      return 0;
    default:
      FUNC10(0);
      return 0;
    }
  }
  return 0;
}