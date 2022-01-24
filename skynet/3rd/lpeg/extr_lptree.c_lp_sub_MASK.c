#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_19__ {int* cs; } ;
struct TYPE_17__ {int ps; } ;
struct TYPE_18__ {int /*<<< orphan*/  tag; TYPE_1__ u; } ;
typedef  TYPE_2__ TTree ;
typedef  TYPE_3__ Charset ;

/* Variables and functions */
 int /*<<< orphan*/  TNot ; 
 int /*<<< orphan*/  TSeq ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 size_t i ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 int* FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
  Charset st1, st2;
  int s1, s2;
  TTree *t1 = FUNC0(L, 1, &s1);
  TTree *t2 = FUNC0(L, 2, &s2);
  if (FUNC8(t1, &st1) && FUNC8(t2, &st2)) {
    TTree *t = FUNC4(L);
    FUNC2(i, FUNC9(t)[i] = st1.cs[i] & ~st2.cs[i]);
  }
  else {
    TTree *tree = FUNC5(L, 2 + s1 + s2);
    tree->tag = TSeq;  /* sequence of... */
    tree->u.ps =  2 + s2;
    FUNC6(tree)->tag = TNot;  /* ...not... */
    FUNC3(FUNC6(FUNC6(tree)), t2, s2 * sizeof(TTree));  /* ...t2 */
    FUNC3(FUNC7(tree), t1, s1 * sizeof(TTree));  /* ... and t1 */
    FUNC1(L, 1, FUNC6(tree), 2);
  }
  return 1;
}