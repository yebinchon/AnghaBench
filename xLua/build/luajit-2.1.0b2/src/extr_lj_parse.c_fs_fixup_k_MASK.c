#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {int /*<<< orphan*/  L; TYPE_2__* kt; int /*<<< orphan*/  nkgc; int /*<<< orphan*/  nkn; } ;
struct TYPE_13__ {int /*<<< orphan*/  sizekgc; int /*<<< orphan*/  sizekn; int /*<<< orphan*/  k; } ;
struct TYPE_12__ {size_t asize; size_t hmask; int /*<<< orphan*/  node; int /*<<< orphan*/  array; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Node ;
typedef  size_t MSize ;
typedef  TYPE_2__ GCtab ;
typedef  TYPE_3__ GCproto ;
typedef  int /*<<< orphan*/  GCobj ;
typedef  int /*<<< orphan*/  GCRef ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 scalar_t__ BCMAX_D ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 size_t FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(FuncState *fs, GCproto *pt, void *kptr)
{
  GCtab *kt;
  TValue *array;
  Node *node;
  MSize i, hmask;
  FUNC0(fs, fs->nkn, BCMAX_D+1, "constants");
  FUNC0(fs, fs->nkgc, BCMAX_D+1, "constants");
  FUNC11(pt->k, kptr);
  pt->sizekn = fs->nkn;
  pt->sizekgc = fs->nkgc;
  kt = fs->kt;
  array = FUNC19(kt->array);
  for (i = 0; i < kt->asize; i++)
    if (FUNC13(&array[i])) {
      TValue *tv = &((TValue *)kptr)[FUNC18(&array[i])];
      if (LJ_DUALNUM)
	FUNC10(tv, (int32_t)i);
      else
	FUNC12(tv, (lua_Number)i);
    }
  node = FUNC7(kt->node);
  hmask = kt->hmask;
  for (i = 0; i <= hmask; i++) {
    Node *n = &node[i];
    if (FUNC13(&n->val)) {
      ptrdiff_t kidx = (ptrdiff_t)FUNC18(&n->val);
      FUNC6(!FUNC14(&n->key));
      if (FUNC16(&n->key)) {
	TValue *tv = &((TValue *)kptr)[kidx];
	if (LJ_DUALNUM) {
	  lua_Number nn = FUNC8(&n->key);
	  int32_t k = FUNC5(nn);
	  FUNC6(!FUNC15(&n->key));
	  if ((lua_Number)k == nn)
	    FUNC10(tv, k);
	  else
	    *tv = n->key;
	} else {
	  *tv = n->key;
	}
      } else {
	GCobj *o = FUNC2(&n->key);
	FUNC9(((GCRef *)kptr)[~kidx], o);
	FUNC4(fs->L, pt, o);
	if (FUNC17(&n->key))
	  FUNC1(fs, FUNC3(o));
      }
    }
  }
}