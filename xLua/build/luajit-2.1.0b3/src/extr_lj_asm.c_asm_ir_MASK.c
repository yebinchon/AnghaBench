#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_137__   TYPE_5__ ;
typedef  struct TYPE_136__   TYPE_2__ ;
typedef  struct TYPE_135__   TYPE_1__ ;

/* Type definitions */
struct TYPE_137__ {int /*<<< orphan*/  errinfo; } ;
struct TYPE_136__ {TYPE_5__* J; int /*<<< orphan*/  gcsteps; int /*<<< orphan*/  curins; } ;
struct TYPE_135__ {int o; int /*<<< orphan*/  op1; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  IROp ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
#define  IR_ABC 215 
#define  IR_ABS 214 
#define  IR_ADD 213 
#define  IR_ADDOV 212 
#define  IR_ALOAD 211 
#define  IR_AREF 210 
#define  IR_ASTORE 209 
#define  IR_ATAN2 208 
#define  IR_BAND 207 
#define  IR_BNOT 206 
#define  IR_BOR 205 
#define  IR_BROL 204 
#define  IR_BROR 203 
#define  IR_BSAR 202 
#define  IR_BSHL 201 
#define  IR_BSHR 200 
#define  IR_BSWAP 199 
#define  IR_BUFHDR 198 
#define  IR_BUFPUT 197 
#define  IR_BUFSTR 196 
#define  IR_BXOR 195 
#define  IR_CALLA 194 
#define  IR_CALLL 193 
#define  IR_CALLN 192 
#define  IR_CALLS 191 
#define  IR_CALLXS 190 
#define  IR_CARG 189 
#define  IR_CNEW 188 
#define  IR_CNEWI 187 
#define  IR_CONV 186 
#define  IR_DIV 185 
#define  IR_EQ 184 
#define  IR_FLOAD 183 
#define  IR_FPMATH 182 
#define  IR_FREF 181 
#define  IR_FSTORE 180 
#define  IR_GCSTEP 179 
#define  IR_GE 178 
#define  IR_GT 177 
#define  IR_HIOP 176 
#define  IR_HLOAD 175 
#define  IR_HREF 174 
#define  IR_HREFK 173 
#define  IR_HSTORE 172 
#define  IR_LDEXP 171 
#define  IR_LE 170 
#define  IR_LOOP 169 
#define  IR_LREF 168 
#define  IR_LT 167 
#define  IR_MAX 166 
#define  IR_MIN 165 
#define  IR_MOD 164 
#define  IR_MUL 163 
#define  IR_MULOV 162 
#define  IR_NE 161 
#define  IR_NEG 160 
#define  IR_NEWREF 159 
#define  IR_NOP 158 
#define  IR_OBAR 157 
#define  IR_PHI 156 
#define  IR_POW 155 
#define  IR_PROF 154 
#define  IR_RETF 153 
#define  IR_SLOAD 152 
#define  IR_SNEW 151 
#define  IR_STRREF 150 
#define  IR_STRTO 149 
#define  IR_SUB 148 
#define  IR_SUBOV 147 
#define  IR_TBAR 146 
#define  IR_TDUP 145 
#define  IR_TNEW 144 
#define  IR_TOBIT 143 
#define  IR_TOSTR 142 
#define  IR_UGE 141 
#define  IR_UGT 140 
#define  IR_ULE 139 
#define  IR_ULOAD 138 
#define  IR_ULT 137 
#define  IR_UREFC 136 
#define  IR_UREFO 135 
#define  IR_USE 134 
#define  IR_USTORE 133 
#define  IR_VLOAD 132 
#define  IR_XBAR 131 
#define  IR_XLOAD 130 
#define  IR_XSNEW 129 
#define  IR_XSTORE 128 
 int /*<<< orphan*/  LJ_TRERR_NYIIR ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC51 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC52 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC53 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC54 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC55 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC56 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC57 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC58 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC59 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC60 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC61 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC62 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC63 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC64 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC65 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC66 (int) ; 
 int /*<<< orphan*/  FUNC67 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC68 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC69 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC70(ASMState *as, IRIns *ir)
{
  switch ((IROp)ir->o) {
  /* Miscellaneous ops. */
  case IR_LOOP: FUNC36(as); break;
  case IR_NOP: case IR_XBAR: FUNC66(!FUNC68(ir)); break;
  case IR_USE:
    FUNC67(as, ir->op1, FUNC64(ir->t) ? RSET_FPR : RSET_GPR); break;
  case IR_PHI: FUNC46(as, ir); break;
  case IR_HIOP: FUNC32(as, ir); break;
  case IR_GCSTEP: FUNC31(as, ir); break;
  case IR_PROF: FUNC48(as, ir); break;

  /* Guarded assertions. */
  case IR_LT: case IR_GE: case IR_LE: case IR_GT:
  case IR_ULT: case IR_UGE: case IR_ULE: case IR_UGT:
  case IR_ABC:
    FUNC23(as, ir);
    break;
  case IR_EQ: case IR_NE:
    if ((ir-1)->o == IR_HREF && ir->op1 == as->curins-1) {
      as->curins--;
      FUNC33(as, ir-1, (IROp)ir->o);
    } else {
      FUNC26(as, ir);
    }
    break;

  case IR_RETF: FUNC49(as, ir); break;

  /* Bit ops. */
  case IR_BNOT: FUNC8(as, ir); break;
  case IR_BSWAP: FUNC15(as, ir); break;
  case IR_BAND: FUNC7(as, ir); break;
  case IR_BOR: FUNC9(as, ir); break;
  case IR_BXOR: FUNC19(as, ir); break;
  case IR_BSHL: FUNC13(as, ir); break;
  case IR_BSHR: FUNC14(as, ir); break;
  case IR_BSAR: FUNC12(as, ir); break;
  case IR_BROL: FUNC10(as, ir); break;
  case IR_BROR: FUNC11(as, ir); break;

  /* Arithmetic ops. */
  case IR_ADD: FUNC1(as, ir); break;
  case IR_SUB: FUNC54(as, ir); break;
  case IR_MUL: FUNC41(as, ir); break;
  case IR_MOD: FUNC40(as, ir); break;
  case IR_NEG: FUNC43(as, ir); break;
#if LJ_SOFTFP
  case IR_DIV: case IR_POW: case IR_ABS:
  case IR_ATAN2: case IR_LDEXP: case IR_FPMATH: case IR_TOBIT:
    lua_assert(0);  /* Unused for LJ_SOFTFP. */
    break;
#else
  case IR_DIV: FUNC25(as, ir); break;
  case IR_POW: FUNC47(as, ir); break;
  case IR_ABS: FUNC0(as, ir); break;
  case IR_ATAN2: FUNC6(as, ir); break;
  case IR_LDEXP: FUNC35(as, ir); break;
  case IR_FPMATH: FUNC28(as, ir); break;
  case IR_TOBIT: FUNC59(as, ir); break;
#endif
  case IR_MIN: FUNC39(as, ir); break;
  case IR_MAX: FUNC38(as, ir); break;

  /* Overflow-checking arithmetic ops. */
  case IR_ADDOV: FUNC2(as, ir); break;
  case IR_SUBOV: FUNC55(as, ir); break;
  case IR_MULOV: FUNC42(as, ir); break;

  /* Memory references. */
  case IR_AREF: FUNC5(as, ir); break;
  case IR_HREF: FUNC33(as, ir, 0); break;
  case IR_HREFK: FUNC34(as, ir); break;
  case IR_NEWREF: FUNC44(as, ir); break;
  case IR_UREFO: case IR_UREFC: FUNC61(as, ir); break;
  case IR_FREF: FUNC29(as, ir); break;
  case IR_STRREF: FUNC52(as, ir); break;
  case IR_LREF: FUNC37(as, ir); break;

  /* Loads and stores. */
  case IR_ALOAD: case IR_HLOAD: case IR_ULOAD: case IR_VLOAD:
    FUNC4(as, ir);
    break;
  case IR_FLOAD: FUNC27(as, ir); break;
  case IR_XLOAD: FUNC62(as, ir); break;
  case IR_SLOAD: FUNC50(as, ir); break;

  case IR_ASTORE: case IR_HSTORE: case IR_USTORE: FUNC3(as, ir); break;
  case IR_FSTORE: FUNC30(as, ir); break;
  case IR_XSTORE: FUNC63(as, ir); break;

  /* Allocations. */
  case IR_SNEW: case IR_XSNEW: FUNC51(as, ir); break;
  case IR_TNEW: FUNC58(as, ir); break;
  case IR_TDUP: FUNC57(as, ir); break;
  case IR_CNEW: case IR_CNEWI: FUNC22(as, ir); break;

  /* Buffer operations. */
  case IR_BUFHDR: FUNC16(as, ir); break;
  case IR_BUFPUT: FUNC17(as, ir); break;
  case IR_BUFSTR: FUNC18(as, ir); break;

  /* Write barriers. */
  case IR_TBAR: FUNC56(as, ir); break;
  case IR_OBAR: FUNC45(as, ir); break;

  /* Type conversions. */
  case IR_CONV: FUNC24(as, ir); break;
  case IR_TOSTR: FUNC60(as, ir); break;
  case IR_STRTO: FUNC53(as, ir); break;

  /* Calls. */
  case IR_CALLA:
    as->gcsteps++;
    /* fallthrough */
  case IR_CALLN: case IR_CALLL: case IR_CALLS: FUNC20(as, ir); break;
  case IR_CALLXS: FUNC21(as, ir); break;
  case IR_CARG: break;

  default:
    FUNC69(&as->J->errinfo, ir->o);
    FUNC65(as->J, LJ_TRERR_NYIIR);
    break;
  }
}