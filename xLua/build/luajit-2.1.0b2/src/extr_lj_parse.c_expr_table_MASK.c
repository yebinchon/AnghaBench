#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_59__   TYPE_9__ ;
typedef  struct TYPE_58__   TYPE_8__ ;
typedef  struct TYPE_57__   TYPE_7__ ;
typedef  struct TYPE_56__   TYPE_6__ ;
typedef  struct TYPE_55__   TYPE_5__ ;
typedef  struct TYPE_54__   TYPE_4__ ;
typedef  struct TYPE_53__   TYPE_3__ ;
typedef  struct TYPE_52__   TYPE_2__ ;
typedef  struct TYPE_51__   TYPE_1__ ;
typedef  struct TYPE_50__   TYPE_12__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_59__ {void* ins; } ;
struct TYPE_51__ {size_t info; } ;
struct TYPE_52__ {int lo; int hi; } ;
struct TYPE_50__ {TYPE_2__ u32; } ;
struct TYPE_53__ {TYPE_1__ s; TYPE_12__ nval; } ;
struct TYPE_58__ {scalar_t__ k; TYPE_3__ u; } ;
struct TYPE_57__ {scalar_t__ freereg; int pc; int /*<<< orphan*/  L; TYPE_9__* bcbase; } ;
struct TYPE_56__ {int asize; int hmask; int /*<<< orphan*/  node; } ;
struct TYPE_55__ {char tok; int /*<<< orphan*/  linenumber; TYPE_7__* fs; } ;
struct TYPE_54__ {int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_4__ Node ;
typedef  TYPE_5__ LexState ;
typedef  TYPE_6__ GCtab ;
typedef  TYPE_7__ FuncState ;
typedef  TYPE_8__ ExpDesc ;
typedef  scalar_t__ BCReg ;
typedef  size_t BCPos ;
typedef  int /*<<< orphan*/  BCLine ;
typedef  TYPE_9__ BCInsLine ;
typedef  void* BCIns ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  BC_TDUP ; 
 int /*<<< orphan*/  BC_TNEW ; 
 scalar_t__ BC_TSETB ; 
 int /*<<< orphan*/  BC_TSETM ; 
 scalar_t__ BC_TSETV ; 
 int /*<<< orphan*/  LJ_52 ; 
 int /*<<< orphan*/  LJ_TTAB ; 
 char TK_goto ; 
 char TK_name ; 
 scalar_t__ VCALL ; 
 scalar_t__ VKNIL ; 
 scalar_t__ VKNUM ; 
 scalar_t__ VKSTR ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 size_t FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 
 scalar_t__ FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_7__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_8__*) ; 
 scalar_t__ FUNC13 (TYPE_8__*) ; 
 scalar_t__ FUNC14 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 scalar_t__ FUNC16 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,TYPE_8__*) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,char,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 char FUNC25 (TYPE_5__*) ; 
 TYPE_6__* FUNC26 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,TYPE_6__*,int) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 TYPE_4__* FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC32 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (void**,int) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_6__* FUNC37 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC39(LexState *ls, ExpDesc *e)
{
  FuncState *fs = ls->fs;
  BCLine line = ls->linenumber;
  GCtab *t = NULL;
  int vcall = 0, needarr = 0, fixt = 0;
  uint32_t narr = 1;  /* First array index. */
  uint32_t nhash = 0;  /* Number of hash entries. */
  BCReg freg = fs->freereg;
  BCPos pc = FUNC3(fs, BC_TNEW, freg, 0);
  FUNC11(e, VNONRELOC, freg);
  FUNC5(fs, 1);
  freg++;
  FUNC20(ls, '{');
  while (ls->tok != '}') {
    ExpDesc key, val;
    vcall = 0;
    if (ls->tok == '[') {
      FUNC9(ls, &key);  /* Already calls expr_toval. */
      if (!FUNC12(&key)) FUNC10(fs, e, &key);
      if (FUNC14(&key) && FUNC16(&key)) needarr = 1; else nhash++;
      FUNC20(ls, '=');
    } else if ((ls->tok == TK_name || (!LJ_52 && ls->tok == TK_goto)) &&
	       FUNC25(ls) == '=') {
      FUNC17(ls, &key);
      FUNC20(ls, '=');
      nhash++;
    } else {
      FUNC11(&key, VKNUM, 0);
      FUNC34(&key.u.nval, (int)narr);
      narr++;
      needarr = vcall = 1;
    }
    FUNC8(ls, &val);
    if (FUNC12(&key) && key.k != VKNIL &&
	(key.k == VKSTR || FUNC13(&val))) {
      TValue k, *v;
      if (!t) {  /* Create template table on demand. */
	BCReg kidx;
	t = FUNC26(fs->L, needarr ? narr : 0, FUNC19(nhash));
	kidx = FUNC6(fs, FUNC31(t), LJ_TTAB);
	fs->bcbase[pc].ins = FUNC0(BC_TDUP, freg-1, kidx);
      }
      vcall = 0;
      FUNC15(&k, &key);
      v = FUNC28(fs->L, t, &k);
      FUNC23(fs->L, t);
      if (FUNC13(&val)) {  /* Add const key/value to template table. */
	FUNC15(v, &val);
      } else {  /* Otherwise create dummy string key (avoids lj_tab_newkey). */
	FUNC36(fs->L, v, t);  /* Preserve key with table itself as value. */
	fixt = 1;   /* Fix this later, after all resizes. */
	goto nonconst;
      }
    } else {
    nonconst:
      if (val.k != VCALL) { FUNC18(fs, &val); vcall = 0; }
      if (FUNC12(&key)) FUNC10(fs, e, &key);
      FUNC4(fs, e, &val);
    }
    fs->freereg = freg;
    if (!FUNC22(ls, ',') && !FUNC22(ls, ';')) break;
  }
  FUNC21(ls, '}', '{', line);
  if (vcall) {
    BCInsLine *ilp = &fs->bcbase[fs->pc-1];
    ExpDesc en;
    FUNC29(FUNC1(ilp->ins) == freg &&
	       FUNC2(ilp->ins) == (narr > 256 ? BC_TSETV : BC_TSETB));
    FUNC11(&en, VKNUM, 0);
    en.u.nval.u32.lo = narr-1;
    en.u.nval.u32.hi = 0x43300000;  /* Biased integer to avoid denormals. */
    if (narr > 256) { fs->pc--; ilp--; }
    ilp->ins = FUNC0(BC_TSETM, freg, FUNC7(fs, &en));
    FUNC32(&ilp[-1].ins, 0);
  }
  if (pc == fs->pc-1) {  /* Make expr relocable if possible. */
    e->u.s.info = pc;
    fs->freereg--;
    e->k = VRELOCABLE;
  } else {
    e->k = VNONRELOC;  /* May have been changed by expr_index. */
  }
  if (!t) {  /* Construct TNEW RD: hhhhhaaaaaaaaaaa. */
    BCIns *ip = &fs->bcbase[pc].ins;
    if (!needarr) narr = 0;
    else if (narr < 3) narr = 3;
    else if (narr > 0x7ff) narr = 0x7ff;
    FUNC33(ip, narr|(FUNC19(nhash)<<11));
  } else {
    if (needarr && t->asize < narr)
      FUNC27(fs->L, t, narr-1);
    if (fixt) {  /* Fix value for dummy keys in template table. */
      Node *node = FUNC30(t->node);
      uint32_t i, hmask = t->hmask;
      for (i = 0; i <= hmask; i++) {
	Node *n = &node[i];
	if (FUNC38(&n->val)) {
	  FUNC29(FUNC37(&n->val) == t);
	  FUNC35(&n->val);  /* Turn value into nil. */
	}
      }
    }
    FUNC24(fs->L);
  }
}