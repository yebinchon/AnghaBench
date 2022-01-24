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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {int* cs; } ;
struct TYPE_9__ {scalar_t__ tag; } ;
typedef  TYPE_1__ TTree ;
typedef  TYPE_2__ Charset ;

/* Variables and functions */
 int /*<<< orphan*/  TChoice ; 
 scalar_t__ TFalse ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 size_t i ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  Charset st1, st2;
  TTree *t1 = FUNC0(L, 1, NULL);
  TTree *t2 = FUNC0(L, 2, NULL);
  if (FUNC6(t1, &st1) && FUNC6(t2, &st2)) {
    TTree *t = FUNC3(L);
    FUNC1(i, FUNC7(t)[i] = st1.cs[i] | st2.cs[i]);
  }
  else if (FUNC5(t1) || t2->tag == TFalse)
    FUNC2(L, 1);  /* true / x => true, x / false => x */
  else if (t1->tag == TFalse)
    FUNC2(L, 2);  /* false / x => x */
  else
    FUNC4(L, TChoice);
  return 1;
}