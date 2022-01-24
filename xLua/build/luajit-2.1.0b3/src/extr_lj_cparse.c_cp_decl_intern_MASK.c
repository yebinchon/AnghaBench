#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_13__ {int info; int size; } ;
struct TYPE_12__ {TYPE_1__* stack; int /*<<< orphan*/  attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  cts; } ;
struct TYPE_10__ {int info; int size; int next; int sib; } ;
typedef  int CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int CTSize ;
typedef  int CTInfo ;
typedef  TYPE_2__ CPState ;
typedef  int CPDeclIdx ;
typedef  TYPE_3__ CPDecl ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CTA_ALIGN ; 
 int /*<<< orphan*/  CTA_QUAL ; 
 int CTF_ALIGN ; 
 int CTF_BOOL ; 
 int CTF_FP ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int CTF_QUAL ; 
 scalar_t__ CTF_VECTOR ; 
 int CTF_VOLATILE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int CTSIZE_INVALID ; 
 int /*<<< orphan*/  CT_ARRAY ; 
 int /*<<< orphan*/  LJ_ERR_FFI_INVSIZE ; 
 int /*<<< orphan*/  LJ_ERR_FFI_INVTYPE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (int) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC24 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 

__attribute__((used)) static CTypeID FUNC27(CPState *cp, CPDecl *decl)
{
  CTypeID id = 0;
  CPDeclIdx idx = 0;
  CTSize csize = CTSIZE_INVALID;
  CTSize cinfo = 0;
  do {
    CType *ct = &decl->stack[idx];
    CTInfo info = ct->info;
    CTInfo size = ct->size;
    /* The cid is already part of info for copies of pointers/functions. */
    idx = ct->next;
    if (FUNC16(info)) {
      FUNC26(id == 0);
      id = FUNC5(info);
      /* Always refetch info/size, since struct/enum may have been completed. */
      cinfo = FUNC6(cp->cts, id)->info;
      csize = FUNC6(cp->cts, id)->size;
      FUNC26(FUNC15(cinfo) || FUNC9(cinfo));
    } else if (FUNC10(info)) {  /* Intern function. */
      CType *fct;
      CTypeID fid;
      CTypeID sib;
      if (id) {
	CType *refct = FUNC21(cp->cts, id);
	/* Reject function or refarray return types. */
	if (FUNC10(refct->info) || FUNC14(refct->info))
	  FUNC3(cp, LJ_ERR_FFI_INVTYPE);
      }
      /* No intervening attributes allowed, skip forward. */
      while (idx) {
	CType *ctn = &decl->stack[idx];
	if (!FUNC8(ctn->info)) break;
	idx = ctn->next;  /* Skip attribute. */
      }
      sib = ct->sib;  /* Next line may reallocate the C type table. */
      fid = FUNC24(cp->cts, &fct);
      csize = CTSIZE_INVALID;
      fct->info = cinfo = info + id;
      fct->size = size;
      fct->sib = sib;
      id = fid;
    } else if (FUNC8(info)) {
      if (FUNC19(info, CTA_QUAL))
	cinfo |= size;
      else if (FUNC19(info, CTA_ALIGN))
	FUNC1(cinfo, ALIGN, size);
      id = FUNC23(cp->cts, info+id, size);
      /* Inherit csize/cinfo from original type. */
    } else {
      if (FUNC11(info)) {  /* Handle mode/vector-size attributes. */
	FUNC26(id == 0);
	if (!(info & CTF_BOOL)) {
	  CTSize msize = FUNC20(decl->attr);
	  CTSize vsize = FUNC22(decl->attr);
	  if (msize && (!(info & CTF_FP) || (msize == 4 || msize == 8))) {
	    CTSize malign = FUNC25(msize);
	    if (malign > 4) malign = 4;  /* Limit alignment. */
	    FUNC1(info, ALIGN, malign);
	    size = msize;  /* Override size via mode. */
	  }
	  if (vsize) {  /* Vector size set? */
	    CTSize esize = FUNC25(size);
	    if (vsize >= esize) {
	      /* Intern the element type first. */
	      id = FUNC23(cp->cts, info, size);
	      /* Then create a vector (array) with vsize alignment. */
	      size = (1u << vsize);
	      if (vsize > 4) vsize = 4;  /* Limit alignment. */
	      if (FUNC4(info) > vsize) vsize = FUNC4(info);
	      info = FUNC2(CT_ARRAY, (info & CTF_QUAL) + CTF_VECTOR +
				      FUNC0(vsize));
	    }
	  }
	}
      } else if (FUNC12(info)) {
	/* Reject pointer/ref to ref. */
	if (id && FUNC13(FUNC21(cp->cts, id)->info))
	  FUNC3(cp, LJ_ERR_FFI_INVTYPE);
	if (FUNC13(info)) {
	  info &= ~CTF_VOLATILE;  /* Refs are always const, never volatile. */
	  /* No intervening attributes allowed, skip forward. */
	  while (idx) {
	    CType *ctn = &decl->stack[idx];
	    if (!FUNC8(ctn->info)) break;
	    idx = ctn->next;  /* Skip attribute. */
	  }
	}
      } else if (FUNC7(info)) {  /* Check for valid array size etc. */
	if (ct->sib == 0) {  /* Only check/size arrays not copied by unroll. */
	  if (FUNC13(cinfo))  /* Reject arrays of refs. */
	    FUNC3(cp, LJ_ERR_FFI_INVTYPE);
	  /* Reject VLS or unknown-sized types. */
	  if (FUNC17(cinfo) || csize == CTSIZE_INVALID)
	    FUNC3(cp, LJ_ERR_FFI_INVSIZE);
	  /* a[] and a[?] keep their invalid size. */
	  if (size != CTSIZE_INVALID) {
	    uint64_t xsz = (uint64_t)size * csize;
	    if (xsz >= 0x80000000u) FUNC3(cp, LJ_ERR_FFI_INVSIZE);
	    size = (CTSize)xsz;
	  }
	}
	if ((cinfo & CTF_ALIGN) > (info & CTF_ALIGN))  /* Find max. align. */
	  info = (info & ~CTF_ALIGN) | (cinfo & CTF_ALIGN);
	info |= (cinfo & CTF_QUAL);  /* Inherit qual. */
      } else {
	FUNC26(FUNC18(info));
      }
      csize = size;
      cinfo = info+id;
      id = FUNC23(cp->cts, info+id, size);
    }
  } while (idx);
  return id;
}