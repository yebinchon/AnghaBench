#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_11__ {int /*<<< orphan*/  keyv; int /*<<< orphan*/  tabv; int /*<<< orphan*/  key; int /*<<< orphan*/  tab; int /*<<< orphan*/  valv; int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ RecordIndex ;
typedef  int /*<<< orphan*/  MMS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(jit_State *J, RecordIndex *ix, int op, MMS mm)
{
  FUNC2(J);
  if (FUNC5(ix->val)) {
    ix->tab = ix->val;
    FUNC0(J->L, &ix->tabv, &ix->valv);
  } else {
    FUNC3(FUNC5(ix->key));
    ix->tab = ix->key;
    FUNC0(J->L, &ix->tabv, &ix->keyv);
  }
  FUNC1(J, ix, mm);
  FUNC4(J, ix, op);
}