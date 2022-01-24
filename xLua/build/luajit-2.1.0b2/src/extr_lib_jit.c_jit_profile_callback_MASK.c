#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_17__ {int /*<<< orphan*/  (* panic ) (TYPE_1__*) ;} ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_9__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KEY_PROFILE_FUNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(lua_State *L2, lua_State *L, int samples,
				 int vmstate)
{
  TValue key;
  cTValue *tv;
  FUNC10(&key, (void *)&KEY_PROFILE_FUNC);
  tv = FUNC4(L, FUNC14(FUNC7(L)), &key);
  if (FUNC15(tv)) {
    char vmst = (char)vmstate;
    int status;
    FUNC8(L2, L2->top++, FUNC2(tv));
    FUNC12(L2, L2->top++, L);
    FUNC9(L2->top++, samples);
    FUNC11(L2, L2->top++, FUNC3(L2, &vmst, 1));
    status = FUNC6(L2, 3, 0, 0);  /* callback(thread, samples, vmstate) */
    if (status) {
      if (FUNC0(L2)->panic) FUNC0(L2)->panic(L2);
      FUNC1(EXIT_FAILURE);
    }
    FUNC5(FUNC0(L2));
  }
}