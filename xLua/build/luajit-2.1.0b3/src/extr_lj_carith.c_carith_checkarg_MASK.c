#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_25__ {TYPE_2__* top; TYPE_2__* base; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_29__ {int /*<<< orphan*/ ** p; TYPE_4__** ct; } ;
struct TYPE_28__ {int /*<<< orphan*/  size; int /*<<< orphan*/  info; } ;
struct TYPE_27__ {int ctypeid; } ;
struct TYPE_26__ {int /*<<< orphan*/  n; int /*<<< orphan*/  i; } ;
typedef  TYPE_2__ TValue ;
typedef  int MSize ;
typedef  TYPE_3__ GCcdata ;
typedef  int CTypeID ;
typedef  TYPE_4__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int /*<<< orphan*/  CTSize ;
typedef  TYPE_5__ CDArith ;

/* Variables and functions */
 int CTALIGN_PTR ; 
 int /*<<< orphan*/  CTID_DOUBLE ; 
 int /*<<< orphan*/  CTID_INT32 ; 
 int /*<<< orphan*/  CTID_P_VOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 int /*<<< orphan*/  CT_PTR ; 
 int /*<<< orphan*/  LUA_TCDATA ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 scalar_t__ FUNC22 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC23(lua_State *L, CTState *cts, CDArith *ca)
{
  TValue *o = L->base;
  int ok = 1;
  MSize i;
  if (o+1 >= L->top)
    FUNC15(L, 1, LUA_TCDATA);
  for (i = 0; i < 2; i++, o++) {
    if (FUNC18(o)) {
      GCcdata *cd = FUNC1(o);
      CTypeID id = (CTypeID)cd->ctypeid;
      CType *ct = FUNC11(cts, id);
      uint8_t *p = (uint8_t *)FUNC3(cd);
      if (FUNC9(ct->info)) {
	p = (uint8_t *)FUNC2(p, ct->size);
	if (FUNC10(ct->info)) ct = FUNC12(cts, ct);
      } else if (FUNC8(ct->info)) {
	p = (uint8_t *)*(void **)p;
	ct = FUNC5(cts,
	  FUNC14(cts, FUNC0(CT_PTR, CTALIGN_PTR|id), CTSIZE_PTR));
      }
      if (FUNC7(ct->info)) ct = FUNC4(cts, ct);
      ca->ct[i] = ct;
      ca->p[i] = p;
    } else if (FUNC19(o)) {
      ca->ct[i] = FUNC5(cts, CTID_INT32);
      ca->p[i] = (uint8_t *)&o->i;
    } else if (FUNC21(o)) {
      ca->ct[i] = FUNC5(cts, CTID_DOUBLE);
      ca->p[i] = (uint8_t *)&o->n;
    } else if (FUNC20(o)) {
      ca->ct[i] = FUNC5(cts, CTID_P_VOID);
      ca->p[i] = (uint8_t *)0;
    } else if (FUNC22(o)) {
      TValue *o2 = i == 0 ? o+1 : o-1;
      CType *ct = FUNC11(cts, FUNC1(o2)->ctypeid);
      ca->ct[i] = NULL;
      ca->p[i] = (uint8_t *)FUNC17(o);
      ok = 0;
      if (FUNC7(ct->info)) {
	CTSize ofs;
	CType *cct = FUNC13(cts, ct, FUNC16(o), &ofs);
	if (cct && FUNC6(cct->info)) {
	  ca->ct[i] = FUNC4(cts, cct);
	  ca->p[i] = (uint8_t *)&cct->size;  /* Assumes ct does not grow. */
	  ok = 1;
	} else {
	  ca->ct[1-i] = ct;  /* Use enum to improve error message. */
	  ca->p[1-i] = NULL;
	  break;
	}
      }
    } else {
      ca->ct[i] = NULL;
      ca->p[i] = (void *)(intptr_t)1;  /* To make it unequal. */
      ok = 0;
    }
  }
  return ok;
}