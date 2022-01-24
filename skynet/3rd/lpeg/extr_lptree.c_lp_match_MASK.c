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
struct TYPE_4__ {int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ Pattern ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  Capture ;

/* Variables and functions */
 int INITCAPSIZE ; 
 int /*<<< orphan*/  SUBJIDX ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC11 (lua_State *L) {
  Capture capture[INITCAPSIZE];
  const char *r;
  size_t l;
  Pattern *p = (FUNC1(L, 1, NULL), FUNC2(L, 1));
  Instruction *code = (p->code != NULL) ? p->code : FUNC10(L, p, 1);
  const char *s = FUNC4(L, SUBJIDX, &l);
  size_t i = FUNC3(L, l);
  int ptop = FUNC5(L);
  FUNC8(L);  /* initialize subscache */
  FUNC7(L, capture);  /* initialize caplistidx */
  FUNC6(L, 1);  /* initialize penvidx */
  r = FUNC9(L, s, s + i, s + l, code, capture, ptop);
  if (r == NULL) {
    FUNC8(L);
    return 1;
  }
  return FUNC0(L, s, r, ptop);
}