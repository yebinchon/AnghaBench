#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ nuse; int size; int /*<<< orphan*/ ** hash; } ;
typedef  TYPE_1__ stringtable ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {TYPE_1__ strt; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LUA_TSHRSTR ; 
 int MAX_INT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ **) ; 
 size_t FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  lu_int32 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static TString *FUNC5 (lua_State *L, const char *str, size_t l,
                                       unsigned int h) {
  GCObject **list;  /* (pointer to) list where it will be inserted */
  stringtable *tb = &FUNC0(L)->strt;
  TString *s;
  if (tb->nuse >= FUNC1(lu_int32, tb->size) && tb->size <= MAX_INT/2)
    FUNC4(L, tb->size*2);  /* too crowded */
  list = &tb->hash[FUNC3(h, tb->size)];
  s = FUNC2(L, str, l, LUA_TSHRSTR, h, list);
  tb->nuse++;
  return s;
}