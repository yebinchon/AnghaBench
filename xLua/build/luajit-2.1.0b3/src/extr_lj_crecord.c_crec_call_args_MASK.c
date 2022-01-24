#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__* base; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_15__ {int info; int size; scalar_t__ sib; } ;
struct TYPE_14__ {int /*<<< orphan*/ * argv; } ;
typedef  scalar_t__ TRef ;
typedef  TYPE_2__ RecordFFData ;
typedef  int MSize ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_3__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int CCI_NARGS_MAX ; 
 scalar_t__ CTCC_FASTCALL ; 
 scalar_t__ CTCC_THISCALL ; 
 int CTF_UNSIGNED ; 
 int CTF_VARARG ; 
 int /*<<< orphan*/  IRCONV_SEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_I16 ; 
 int /*<<< orphan*/  IRT_I64 ; 
 int /*<<< orphan*/  IRT_I8 ; 
 int /*<<< orphan*/  IRT_INT ; 
 int /*<<< orphan*/  IRT_NIL ; 
 int /*<<< orphan*/  IRT_U16 ; 
 int /*<<< orphan*/  IRT_U64 ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IR_CARG ; 
 scalar_t__ LJ_SOFTFP ; 
 int /*<<< orphan*/  LJ_TRERR_NYICALL ; 
 scalar_t__ TREF_NIL ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC20(jit_State *J, RecordFFData *rd,
			   CTState *cts, CType *ct)
{
  TRef args[CCI_NARGS_MAX];
  CTypeID fid;
  MSize i, n;
  TRef tr, *base;
  cTValue *o;
#if LJ_TARGET_X86
#if LJ_ABI_WIN
  TRef *arg0 = NULL, *arg1 = NULL;
#endif
  int ngpr = 0;
  if (ctype_cconv(ct->info) == CTCC_THISCALL)
    ngpr = 1;
  else if (ctype_cconv(ct->info) == CTCC_FASTCALL)
    ngpr = 2;
#endif

  /* Skip initial attributes. */
  fid = ct->sib;
  while (fid) {
    CType *ctf = FUNC4(cts, fid);
    if (!FUNC5(ctf->info)) break;
    fid = ctf->sib;
  }
  args[0] = TREF_NIL;
  for (n = 0, base = J->base+1, o = rd->argv+1; *base; n++, base++, o++) {
    CTypeID did;
    CType *d;

    if (n >= CCI_NARGS_MAX)
      FUNC17(J, LJ_TRERR_NYICALL);

    if (fid) {  /* Get argument type from field. */
      CType *ctf = FUNC4(cts, fid);
      fid = ctf->sib;
      FUNC18(FUNC7(ctf->info));
      did = FUNC3(ctf->info);
    } else {
      if (!(ct->info & CTF_VARARG))
	FUNC17(J, LJ_TRERR_NYICALL);  /* Too many arguments. */
      did = FUNC15(cts, o);  /* Infer vararg type. */
    }
    d = FUNC12(cts, did);
    if (!(FUNC10(d->info) || FUNC11(d->info) ||
	  FUNC6(d->info)))
      FUNC17(J, LJ_TRERR_NYICALL);
    tr = FUNC1(J, d, 0, *base, o);
    if (FUNC9(d->info)) {
      if (d->size < 4) {
	if ((d->info & CTF_UNSIGNED))
	  tr = FUNC13(tr, IRT_INT, d->size==1 ? IRT_U8 : IRT_U16, 0);
	else
	  tr = FUNC13(tr, IRT_INT, d->size==1 ? IRT_I8 : IRT_I16,IRCONV_SEXT);
      }
    } else if (LJ_SOFTFP && FUNC8(d->info) && d->size > 4) {
      FUNC16(J);
    }
#if LJ_TARGET_X86
    /* 64 bit args must not end up in registers for fastcall/thiscall. */
#if LJ_ABI_WIN
    if (!ctype_isfp(d->info)) {
      /* Sigh, the Windows/x86 ABI allows reordering across 64 bit args. */
      if (tref_typerange(tr, IRT_I64, IRT_U64)) {
	if (ngpr) {
	  arg0 = &args[n]; args[n++] = TREF_NIL; ngpr--;
	  if (ngpr) {
	    arg1 = &args[n]; args[n++] = TREF_NIL; ngpr--;
	  }
	}
      } else {
	if (arg0) { *arg0 = tr; arg0 = NULL; n--; continue; }
	if (arg1) { *arg1 = tr; arg1 = NULL; n--; continue; }
	if (ngpr) ngpr--;
      }
    }
#else
    if (!ctype_isfp(d->info) && ngpr) {
      if (tref_typerange(tr, IRT_I64, IRT_U64)) {
	/* No reordering for other x86 ABIs. Simply add alignment args. */
	do { args[n++] = TREF_NIL; } while (--ngpr);
      } else {
	ngpr--;
      }
    }
#endif
#endif
    args[n] = tr;
  }
  tr = args[0];
  for (i = 1; i < n; i++)
    tr = FUNC14(FUNC0(IR_CARG, IRT_NIL), tr, args[i]);
  return tr;
}