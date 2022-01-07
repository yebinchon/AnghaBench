
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_137__ TYPE_5__ ;
typedef struct TYPE_136__ TYPE_2__ ;
typedef struct TYPE_135__ TYPE_1__ ;


struct TYPE_137__ {int errinfo; } ;
struct TYPE_136__ {TYPE_5__* J; int gcsteps; int curins; } ;
struct TYPE_135__ {int o; int op1; int t; } ;
typedef int IROp ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;
 int LJ_TRERR_NYIIR ;
 int RSET_FPR ;
 int RSET_GPR ;
 int asm_abs (TYPE_2__*,TYPE_1__*) ;
 int asm_add (TYPE_2__*,TYPE_1__*) ;
 int asm_addov (TYPE_2__*,TYPE_1__*) ;
 int asm_ahustore (TYPE_2__*,TYPE_1__*) ;
 int asm_ahuvload (TYPE_2__*,TYPE_1__*) ;
 int asm_aref (TYPE_2__*,TYPE_1__*) ;
 int asm_atan2 (TYPE_2__*,TYPE_1__*) ;
 int asm_band (TYPE_2__*,TYPE_1__*) ;
 int asm_bnot (TYPE_2__*,TYPE_1__*) ;
 int asm_bor (TYPE_2__*,TYPE_1__*) ;
 int asm_brol (TYPE_2__*,TYPE_1__*) ;
 int asm_bror (TYPE_2__*,TYPE_1__*) ;
 int asm_bsar (TYPE_2__*,TYPE_1__*) ;
 int asm_bshl (TYPE_2__*,TYPE_1__*) ;
 int asm_bshr (TYPE_2__*,TYPE_1__*) ;
 int asm_bswap (TYPE_2__*,TYPE_1__*) ;
 int asm_bufhdr (TYPE_2__*,TYPE_1__*) ;
 int asm_bufput (TYPE_2__*,TYPE_1__*) ;
 int asm_bufstr (TYPE_2__*,TYPE_1__*) ;
 int asm_bxor (TYPE_2__*,TYPE_1__*) ;
 int asm_call (TYPE_2__*,TYPE_1__*) ;
 int asm_callx (TYPE_2__*,TYPE_1__*) ;
 int asm_cnew (TYPE_2__*,TYPE_1__*) ;
 int asm_comp (TYPE_2__*,TYPE_1__*) ;
 int asm_conv (TYPE_2__*,TYPE_1__*) ;
 int asm_div (TYPE_2__*,TYPE_1__*) ;
 int asm_equal (TYPE_2__*,TYPE_1__*) ;
 int asm_fload (TYPE_2__*,TYPE_1__*) ;
 int asm_fpmath (TYPE_2__*,TYPE_1__*) ;
 int asm_fref (TYPE_2__*,TYPE_1__*) ;
 int asm_fstore (TYPE_2__*,TYPE_1__*) ;
 int asm_gcstep (TYPE_2__*,TYPE_1__*) ;
 int asm_hiop (TYPE_2__*,TYPE_1__*) ;
 int asm_href (TYPE_2__*,TYPE_1__*,int ) ;
 int asm_hrefk (TYPE_2__*,TYPE_1__*) ;
 int asm_ldexp (TYPE_2__*,TYPE_1__*) ;
 int asm_loop (TYPE_2__*) ;
 int asm_lref (TYPE_2__*,TYPE_1__*) ;
 int asm_max (TYPE_2__*,TYPE_1__*) ;
 int asm_min (TYPE_2__*,TYPE_1__*) ;
 int asm_mod (TYPE_2__*,TYPE_1__*) ;
 int asm_mul (TYPE_2__*,TYPE_1__*) ;
 int asm_mulov (TYPE_2__*,TYPE_1__*) ;
 int asm_neg (TYPE_2__*,TYPE_1__*) ;
 int asm_newref (TYPE_2__*,TYPE_1__*) ;
 int asm_obar (TYPE_2__*,TYPE_1__*) ;
 int asm_phi (TYPE_2__*,TYPE_1__*) ;
 int asm_pow (TYPE_2__*,TYPE_1__*) ;
 int asm_prof (TYPE_2__*,TYPE_1__*) ;
 int asm_retf (TYPE_2__*,TYPE_1__*) ;
 int asm_sload (TYPE_2__*,TYPE_1__*) ;
 int asm_snew (TYPE_2__*,TYPE_1__*) ;
 int asm_strref (TYPE_2__*,TYPE_1__*) ;
 int asm_strto (TYPE_2__*,TYPE_1__*) ;
 int asm_sub (TYPE_2__*,TYPE_1__*) ;
 int asm_subov (TYPE_2__*,TYPE_1__*) ;
 int asm_tbar (TYPE_2__*,TYPE_1__*) ;
 int asm_tdup (TYPE_2__*,TYPE_1__*) ;
 int asm_tnew (TYPE_2__*,TYPE_1__*) ;
 int asm_tobit (TYPE_2__*,TYPE_1__*) ;
 int asm_tostr (TYPE_2__*,TYPE_1__*) ;
 int asm_uref (TYPE_2__*,TYPE_1__*) ;
 int asm_xload (TYPE_2__*,TYPE_1__*) ;
 int asm_xstore (TYPE_2__*,TYPE_1__*) ;
 int irt_isfp (int ) ;
 int lj_trace_err_info (TYPE_5__*,int ) ;
 int lua_assert (int) ;
 int ra_alloc1 (TYPE_2__*,int ,int ) ;
 int ra_used (TYPE_1__*) ;
 int setintV (int *,int) ;

__attribute__((used)) static void asm_ir(ASMState *as, IRIns *ir)
{
  switch ((IROp)ir->o) {

  case 169: asm_loop(as); break;
  case 158: case 131: lua_assert(!ra_used(ir)); break;
  case 134:
    ra_alloc1(as, ir->op1, irt_isfp(ir->t) ? RSET_FPR : RSET_GPR); break;
  case 156: asm_phi(as, ir); break;
  case 176: asm_hiop(as, ir); break;
  case 179: asm_gcstep(as, ir); break;
  case 154: asm_prof(as, ir); break;


  case 167: case 178: case 170: case 177:
  case 137: case 141: case 139: case 140:
  case 215:
    asm_comp(as, ir);
    break;
  case 184: case 161:
    if ((ir-1)->o == 174 && ir->op1 == as->curins-1) {
      as->curins--;
      asm_href(as, ir-1, (IROp)ir->o);
    } else {
      asm_equal(as, ir);
    }
    break;

  case 153: asm_retf(as, ir); break;


  case 206: asm_bnot(as, ir); break;
  case 199: asm_bswap(as, ir); break;
  case 207: asm_band(as, ir); break;
  case 205: asm_bor(as, ir); break;
  case 195: asm_bxor(as, ir); break;
  case 201: asm_bshl(as, ir); break;
  case 200: asm_bshr(as, ir); break;
  case 202: asm_bsar(as, ir); break;
  case 204: asm_brol(as, ir); break;
  case 203: asm_bror(as, ir); break;


  case 213: asm_add(as, ir); break;
  case 148: asm_sub(as, ir); break;
  case 163: asm_mul(as, ir); break;
  case 164: asm_mod(as, ir); break;
  case 160: asm_neg(as, ir); break;






  case 185: asm_div(as, ir); break;
  case 155: asm_pow(as, ir); break;
  case 214: asm_abs(as, ir); break;
  case 208: asm_atan2(as, ir); break;
  case 171: asm_ldexp(as, ir); break;
  case 182: asm_fpmath(as, ir); break;
  case 143: asm_tobit(as, ir); break;

  case 165: asm_min(as, ir); break;
  case 166: asm_max(as, ir); break;


  case 212: asm_addov(as, ir); break;
  case 147: asm_subov(as, ir); break;
  case 162: asm_mulov(as, ir); break;


  case 210: asm_aref(as, ir); break;
  case 174: asm_href(as, ir, 0); break;
  case 173: asm_hrefk(as, ir); break;
  case 159: asm_newref(as, ir); break;
  case 135: case 136: asm_uref(as, ir); break;
  case 181: asm_fref(as, ir); break;
  case 150: asm_strref(as, ir); break;
  case 168: asm_lref(as, ir); break;


  case 211: case 175: case 138: case 132:
    asm_ahuvload(as, ir);
    break;
  case 183: asm_fload(as, ir); break;
  case 130: asm_xload(as, ir); break;
  case 152: asm_sload(as, ir); break;

  case 209: case 172: case 133: asm_ahustore(as, ir); break;
  case 180: asm_fstore(as, ir); break;
  case 128: asm_xstore(as, ir); break;


  case 151: case 129: asm_snew(as, ir); break;
  case 144: asm_tnew(as, ir); break;
  case 145: asm_tdup(as, ir); break;
  case 188: case 187: asm_cnew(as, ir); break;


  case 198: asm_bufhdr(as, ir); break;
  case 197: asm_bufput(as, ir); break;
  case 196: asm_bufstr(as, ir); break;


  case 146: asm_tbar(as, ir); break;
  case 157: asm_obar(as, ir); break;


  case 186: asm_conv(as, ir); break;
  case 142: asm_tostr(as, ir); break;
  case 149: asm_strto(as, ir); break;


  case 194:
    as->gcsteps++;

  case 192: case 193: case 191: asm_call(as, ir); break;
  case 190: asm_callx(as, ir); break;
  case 189: break;

  default:
    setintV(&as->J->errinfo, ir->o);
    lj_trace_err_info(as->J, LJ_TRERR_NYIIR);
    break;
  }
}
