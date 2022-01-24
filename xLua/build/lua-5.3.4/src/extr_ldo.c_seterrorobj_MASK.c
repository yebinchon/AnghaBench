#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  memerrmsg; } ;
typedef  scalar_t__ StkId ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
#define  LUA_ERRERR 129 
#define  LUA_ERRMEM 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (lua_State *L, int errcode, StkId oldtop) {
  switch (errcode) {
    case LUA_ERRMEM: {  /* memory error? */
      FUNC3(L, oldtop, FUNC0(L)->memerrmsg); /* reuse preregistered msg. */
      break;
    }
    case LUA_ERRERR: {
      FUNC3(L, oldtop, FUNC1(L, "error in error handling"));
      break;
    }
    default: {
      FUNC2(L, oldtop, L->top - 1);  /* error message on current top */
      break;
    }
  }
  L->top = oldtop + 1;
}