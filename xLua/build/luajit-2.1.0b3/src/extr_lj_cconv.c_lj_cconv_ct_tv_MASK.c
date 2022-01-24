#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_50__   TYPE_4__ ;
typedef  struct TYPE_49__   TYPE_3__ ;
typedef  struct TYPE_48__   TYPE_38__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_50__ {scalar_t__ size; int /*<<< orphan*/  info; } ;
struct TYPE_49__ {scalar_t__ len; } ;
struct TYPE_48__ {int ctypeid; } ;
struct TYPE_47__ {scalar_t__ udtype; } ;
struct TYPE_46__ {int /*<<< orphan*/  n; int /*<<< orphan*/  i; } ;
typedef  TYPE_1__ TValue ;
typedef  TYPE_2__ GCudata ;
typedef  TYPE_3__ GCstr ;
typedef  int CTypeID ;
typedef  TYPE_4__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  scalar_t__ CTSize ;
typedef  int /*<<< orphan*/  CTInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CCF_FROMTV ; 
 int CTALIGN_PTR ; 
 int CTID_A_CCHAR ; 
 int CTID_BOOL ; 
 int CTID_DOUBLE ; 
 int CTID_INT32 ; 
 int CTID_P_VOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ CTSIZE_PTR ; 
 int /*<<< orphan*/  CT_PTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UDTYPE_IO_FILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_38__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_38__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 void* FUNC22 (TYPE_1__*) ; 
 void* FUNC23 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC25 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,scalar_t__*) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC29 (TYPE_1__*) ; 
 scalar_t__ FUNC30 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*) ; 
 scalar_t__ FUNC32 (TYPE_1__*) ; 
 scalar_t__ FUNC33 (TYPE_1__*) ; 
 scalar_t__ FUNC34 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*) ; 
 scalar_t__ FUNC36 (TYPE_1__*) ; 
 scalar_t__ FUNC37 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_1__*) ; 
 scalar_t__ FUNC39 (TYPE_1__*) ; 
 scalar_t__ FUNC40 (TYPE_1__*) ; 
 scalar_t__ FUNC41 (TYPE_1__*) ; 
 TYPE_2__* FUNC42 (TYPE_1__*) ; 
 void* FUNC43 (TYPE_2__*) ; 

void FUNC44(CTState *cts, CType *d,
		    uint8_t *dp, TValue *o, CTInfo flags)
{
  CTypeID sid = CTID_P_VOID;
  CType *s;
  void *tmpptr;
  uint8_t tmpbool, *sp = (uint8_t *)&tmpptr;
  if (FUNC1(FUNC35(o))) {
    sp = (uint8_t *)&o->i;
    sid = CTID_INT32;
    flags |= CCF_FROMTV;
  } else if (FUNC1(FUNC38(o))) {
    sp = (uint8_t *)&o->n;
    sid = CTID_DOUBLE;
    flags |= CCF_FROMTV;
  } else if (FUNC33(o)) {
    sp = FUNC7(FUNC6(o));
    sid = FUNC6(o)->ctypeid;
    s = FUNC10(cts, sid);
    if (FUNC16(s->info)) {  /* Resolve reference for value. */
      FUNC27(s->size == CTSIZE_PTR);
      sp = *(void **)sp;
      sid = FUNC9(s->info);
    }
    s = FUNC19(cts, sid);
    if (FUNC14(s->info)) {
      sid = FUNC26(cts, FUNC0(CT_PTR, CTALIGN_PTR|sid), CTSIZE_PTR);
    } else {
      if (FUNC13(s->info)) s = FUNC8(cts, s);
      goto doconv;
    }
  } else if (FUNC39(o)) {
    GCstr *str = FUNC29(o);
    if (FUNC13(d->info)) {  /* Match string against enum constant. */
      CTSize ofs;
      CType *cct = FUNC25(cts, d, str, &ofs);
      if (!cct || !FUNC12(cct->info))
	goto err_conv;
      FUNC27(d->size == 4);
      sp = (uint8_t *)&cct->size;
      sid = FUNC9(cct->info);
    } else if (FUNC17(d->info)) {  /* Copy string to array. */
      CType *dc = FUNC20(cts, d);
      CTSize sz = str->len+1;
      if (!FUNC15(dc->info) || dc->size != 1)
	goto err_conv;
      if (d->size != 0 && d->size < sz)
	sz = d->size;
      FUNC28(dp, FUNC30(str), sz);
      return;
    } else {  /* Otherwise pass it as a const char[]. */
      sp = (uint8_t *)FUNC30(str);
      sid = CTID_A_CCHAR;
      flags |= CCF_FROMTV;
    }
  } else if (FUNC40(o)) {
    if (FUNC11(d->info)) {
      FUNC3(cts, d, dp, FUNC31(o), flags);
      return;
    } else if (FUNC18(d->info)) {
      FUNC5(cts, d, dp, FUNC31(o), flags);
      return;
    } else {
      goto err_conv;
    }
  } else if (FUNC32(o)) {
    tmpbool = FUNC2(o);
    sp = &tmpbool;
    sid = CTID_BOOL;
  } else if (FUNC37(o)) {
    tmpptr = (void *)0;
    flags |= CCF_FROMTV;
  } else if (FUNC41(o)) {
    GCudata *ud = FUNC42(o);
    tmpptr = FUNC43(ud);
    if (ud->udtype == UDTYPE_IO_FILE)
      tmpptr = *(void **)tmpptr;
  } else if (FUNC36(o)) {
    tmpptr = FUNC22(o);
  } else if (FUNC34(o)) {
    void *p = FUNC23(cts, d, FUNC21(o));
    if (p) {
      *(void **)dp = p;
      return;
    }
    goto err_conv;
  } else {
  err_conv:
    FUNC4(cts, d, o, flags);
  }
  s = FUNC10(cts, sid);
doconv:
  if (FUNC13(d->info)) d = FUNC8(cts, d);
  FUNC24(cts, d, s, dp, sp, flags);
}