#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  scalar_t__ lua_Number ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_37__ {int /*<<< orphan*/  L; } ;
struct TYPE_36__ {int info; int size; } ;
struct TYPE_35__ {scalar_t__ ctypeid; } ;
struct TYPE_34__ {int len; } ;
typedef  TYPE_1__ GCstr ;
typedef  TYPE_2__ GCcdata ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_3__ CType ;
typedef  TYPE_4__ CTState ;
typedef  scalar_t__ CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 scalar_t__ CTA_QUAL ; 
 int CTF_COMPLEX ; 
 int CTF_CONST ; 
 int CTF_VECTOR ; 
 scalar_t__ CTID_CTYPEID ; 
 scalar_t__ CTID_INT_PSZ ; 
 scalar_t__ CTSIZE_INVALID ; 
 int CTSIZE_PTR ; 
 scalar_t__ LJ_64 ; 
 int /*<<< orphan*/  LJ_ERR_FFI_INVSIZE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* FUNC6 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 TYPE_3__* FUNC16 (TYPE_4__*,scalar_t__) ; 
 TYPE_3__* FUNC17 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (TYPE_4__*,TYPE_3__*,TYPE_1__*,scalar_t__*) ; 
 TYPE_3__* FUNC21 (TYPE_4__*,TYPE_3__*,TYPE_1__*,scalar_t__*,int*) ; 
 scalar_t__ FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__ volatile) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ *) ; 
 char* FUNC28 (TYPE_1__*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *) ; 

CType *FUNC33(CTState *cts, GCcdata *cd, cTValue *key, uint8_t **pp,
		      CTInfo *qual)
{
  uint8_t *p = (uint8_t *)FUNC2(cd);
  CType *ct = FUNC6(cts, cd->ctypeid);
  ptrdiff_t idx;

  /* Resolve reference for cdata object. */
  if (FUNC14(ct->info)) {
    FUNC25(ct->size == CTSIZE_PTR);
    p = *(uint8_t **)p;
    ct = FUNC4(cts, ct);
  }

collect_attrib:
  /* Skip attributes and collect qualifiers. */
  while (FUNC7(ct->info)) {
    if (FUNC3(ct->info) == CTA_QUAL) *qual |= ct->size;
    ct = FUNC4(cts, ct);
  }
  FUNC25(!FUNC14(ct->info));  /* Interning rejects refs to refs. */

  if (FUNC30(key)) {
    idx = (ptrdiff_t)FUNC18(key);
    goto integer_key;
  } else if (FUNC31(key)) {  /* Numeric key. */
#ifdef _MSC_VER
    /* Workaround for MSVC bug. */
    volatile
#endif
    lua_Number n = FUNC26(key);
    idx = LJ_64 ? (ptrdiff_t)n : (ptrdiff_t)FUNC24(n);
  integer_key:
    if (FUNC12(ct->info)) {
      CTSize sz = FUNC22(cts, FUNC5(ct->info));  /* Element size. */
      if (sz == CTSIZE_INVALID)
	FUNC23(cts->L, LJ_ERR_FFI_INVSIZE);
      if (FUNC13(ct->info)) {
	p = (uint8_t *)FUNC1(p, ct->size);
      } else if ((ct->info & (CTF_VECTOR|CTF_COMPLEX))) {
	if ((ct->info & CTF_COMPLEX)) idx &= 1;
	*qual |= CTF_CONST;  /* Valarray elements are constant. */
      }
      *pp = p + idx*(int32_t)sz;
      return ct;
    }
  } else if (FUNC29(key)) {  /* Integer cdata key. */
    GCcdata *cdk = FUNC0(key);
    CType *ctk = FUNC16(cts, cdk->ctypeid);
    if (FUNC10(ctk->info)) ctk = FUNC4(cts, ctk);
    if (FUNC11(ctk->info)) {
      FUNC19(cts, FUNC6(cts, CTID_INT_PSZ), ctk,
		     (uint8_t *)&idx, FUNC2(cdk), 0);
      goto integer_key;
    }
  } else if (FUNC32(key)) {  /* String key. */
    GCstr *name = FUNC27(key);
    if (FUNC15(ct->info)) {
      CTSize ofs;
      CType *fct = FUNC21(cts, ct, name, &ofs, qual);
      if (fct) {
	*pp = p + ofs;
	return fct;
      }
    } else if (FUNC8(ct->info)) {
      if (name->len == 2) {
	*qual |= CTF_CONST;  /* Complex fields are constant. */
	if (FUNC28(name)[0] == 'r' && FUNC28(name)[1] == 'e') {
	  *pp = p;
	  return ct;
	} else if (FUNC28(name)[0] == 'i' && FUNC28(name)[1] == 'm') {
	  *pp = p + (ct->size >> 1);
	  return ct;
	}
      }
    } else if (cd->ctypeid == CTID_CTYPEID) {
      /* Allow indexing a (pointer to) struct constructor to get constants. */
      CType *sct = FUNC16(cts, *(CTypeID *)p);
      if (FUNC13(sct->info))
	sct = FUNC17(cts, sct);
      if (FUNC15(sct->info)) {
	CTSize ofs;
	CType *fct = FUNC20(cts, sct, name, &ofs);
	if (fct && FUNC9(fct->info))
	  return fct;
      }
      ct = sct;  /* Allow resolving metamethods for constructors, too. */
    }
  }
  if (FUNC13(ct->info)) {  /* Automatically perform '->'. */
    if (FUNC15(FUNC17(cts, ct)->info)) {
      p = (uint8_t *)FUNC1(p, ct->size);
      ct = FUNC4(cts, ct);
      goto collect_attrib;
    }
  }
  *qual |= 1;  /* Lookup failed. */
  return ct;  /* But return the resolved raw type. */
}