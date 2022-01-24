#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/ * tree; scalar_t__ codesize; int /*<<< orphan*/ * code; } ;
typedef  int /*<<< orphan*/  TTree ;
typedef  TYPE_1__ Pattern ;

/* Variables and functions */
 int /*<<< orphan*/  PATTERN_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static TTree *FUNC5 (lua_State *L, int len) {
  size_t size = (len - 1) * sizeof(TTree) + sizeof(Pattern);
  Pattern *p = (Pattern *)FUNC1(L, size);
  FUNC0(L, PATTERN_T);
  FUNC2(L, -1);
  FUNC4(L, -3);
  FUNC3(L, -2);
  p->code = NULL;  p->codesize = 0;
  return p->tree;
}