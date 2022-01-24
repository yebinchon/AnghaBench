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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  nuse; int /*<<< orphan*/  size; TYPE_3__** hash; } ;
typedef  TYPE_2__ stringtable ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {TYPE_2__ strt; } ;
struct TYPE_6__ {TYPE_3__* hnext; } ;
struct TYPE_8__ {TYPE_1__ u; int /*<<< orphan*/  hash; } ;
typedef  TYPE_3__ TString ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (lua_State *L, TString *ts) {
  stringtable *tb = &FUNC0(L)->strt;
  TString **p = &tb->hash[FUNC1(ts->hash, tb->size)];
  while (*p != ts)  /* find previous element */
    p = &(*p)->u.hnext;
  *p = (*p)->u.hnext;  /* remove element from its list */
  tb->nuse--;
}