#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ tag; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
 scalar_t__ TFalse ; 
 int /*<<< orphan*/  TSeq ; 
 scalar_t__ TTrue ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
  TTree *tree1 = FUNC0(L, 1, NULL);
  TTree *tree2 = FUNC0(L, 2, NULL);
  if (tree1->tag == TFalse || tree2->tag == TTrue)
    FUNC1(L, 1);  /* false . x == false, x . true = x */
  else if (tree1->tag == TTrue)
    FUNC1(L, 2);  /* true . x = x */
  else
    FUNC2(L, TSeq);
  return 1;
}