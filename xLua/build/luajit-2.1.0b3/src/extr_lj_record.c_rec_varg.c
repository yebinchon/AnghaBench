
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ptrdiff_t ;
struct TYPE_13__ {int maxslot; int* base; scalar_t__ framedepth; int bcskip; int errinfo; TYPE_2__* L; TYPE_1__* pt; } ;
typedef TYPE_3__ jit_State ;
typedef int int32_t ;
struct TYPE_12__ {int * base; } ;
struct TYPE_11__ {int numparams; } ;
typedef int TRef ;
typedef int IRType ;
typedef int BCReg ;


 int BC_VARG ;
 int FRAME_VARG ;
 int IRCONV_INDEX ;
 int IRCONV_INT_NUM ;
 int IRSLOAD_FRAME ;
 int IRSLOAD_READONLY ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 int IRT_IGC ;
 int IRT_PGC ;
 int IR_ADD ;
 int IR_AREF ;
 int IR_BSHL ;
 int IR_BSHR ;
 int IR_CONV ;
 int IR_EQ ;
 int IR_GE ;
 int IR_LE ;
 int IR_LT ;
 int IR_SLOAD ;
 int IR_SUB ;
 int IR_VLOAD ;
 int LJ_FR2 ;
 int LJ_TRERR_NYIBC ;
 int REF_BASE ;
 void* TREF_NIL ;
 int TREF_PRI (int ) ;
 int emitir (int ,int,int) ;
 int frame_delta (int *) ;
 scalar_t__ frame_ftsz (int *) ;
 int frame_isvarg (int *) ;
 void* getslot (TYPE_3__*,int) ;
 scalar_t__ irtype_ispri (int ) ;
 int itype2irt (int *) ;
 int lj_ffrecord_select_mode (TYPE_3__*,int,int *) ;
 int lj_ir_kint (TYPE_3__*,int) ;
 int lj_trace_err_info (TYPE_3__*,int ) ;
 int lua_assert (int ) ;
 int rec_idx_abc (TYPE_3__*,int,int,int ) ;
 scalar_t__ select_detect (TYPE_3__*) ;
 int setintV (int *,int ) ;
 int tref_isinteger (int) ;
 scalar_t__ tref_isk (int) ;

__attribute__((used)) static void rec_varg(jit_State *J, BCReg dst, ptrdiff_t nresults)
{
  int32_t numparams = J->pt->numparams;
  ptrdiff_t nvararg = frame_delta(J->L->base-1) - numparams - 1 - LJ_FR2;
  lua_assert(frame_isvarg(J->L->base-1));
  if (LJ_FR2 && dst > J->maxslot)
    J->base[dst-1] = 0;
  if (J->framedepth > 0) {
    ptrdiff_t i;
    if (nvararg < 0) nvararg = 0;
    if (nresults == -1) {
      nresults = nvararg;
      J->maxslot = dst + (BCReg)nvararg;
    } else if (dst + nresults > J->maxslot) {
      J->maxslot = dst + (BCReg)nresults;
    }
    for (i = 0; i < nresults; i++)
      J->base[dst+i] = i < nvararg ? getslot(J, i - nvararg - 1 - LJ_FR2) : TREF_NIL;
  } else {
    TRef fr = emitir(IRTI(IR_SLOAD), LJ_FR2, IRSLOAD_READONLY|IRSLOAD_FRAME);
    int32_t frofs = 8*(1+LJ_FR2+numparams)+FRAME_VARG;
    if (nresults >= 0) {
      ptrdiff_t i;
      if (nvararg > 0) {
 ptrdiff_t nload = nvararg >= nresults ? nresults : nvararg;
 TRef vbase;
 if (nvararg >= nresults)
   emitir(IRTGI(IR_GE), fr, lj_ir_kint(J, frofs+8*(int32_t)nresults));
 else
   emitir(IRTGI(IR_EQ), fr,
   lj_ir_kint(J, (int32_t)frame_ftsz(J->L->base-1)));
 vbase = emitir(IRT(IR_SUB, IRT_IGC), REF_BASE, fr);
 vbase = emitir(IRT(IR_ADD, IRT_PGC), vbase, lj_ir_kint(J, frofs-8));
 for (i = 0; i < nload; i++) {
   IRType t = itype2irt(&J->L->base[i-1-LJ_FR2-nvararg]);
   TRef aref = emitir(IRT(IR_AREF, IRT_PGC),
        vbase, lj_ir_kint(J, (int32_t)i));
   TRef tr = emitir(IRTG(IR_VLOAD, t), aref, 0);
   if (irtype_ispri(t)) tr = TREF_PRI(t);
   J->base[dst+i] = tr;
 }
      } else {
 emitir(IRTGI(IR_LE), fr, lj_ir_kint(J, frofs));
 nvararg = 0;
      }
      for (i = nvararg; i < nresults; i++)
 J->base[dst+i] = TREF_NIL;
      if (dst + (BCReg)nresults > J->maxslot)
 J->maxslot = dst + (BCReg)nresults;
    } else if (select_detect(J)) {
      TRef tridx = J->base[dst-1];
      TRef tr = TREF_NIL;
      ptrdiff_t idx = lj_ffrecord_select_mode(J, tridx, &J->L->base[dst-1]);
      if (idx < 0) goto nyivarg;
      if (idx != 0 && !tref_isinteger(tridx))
 tridx = emitir(IRTGI(IR_CONV), tridx, IRCONV_INT_NUM|IRCONV_INDEX);
      if (idx != 0 && tref_isk(tridx)) {
 emitir(IRTGI(idx <= nvararg ? IR_GE : IR_LT),
        fr, lj_ir_kint(J, frofs+8*(int32_t)idx));
 frofs -= 8;
      } else if (idx <= nvararg) {
 TRef tmp = emitir(IRTI(IR_ADD), fr, lj_ir_kint(J, -frofs));
 if (numparams)
   emitir(IRTGI(IR_GE), tmp, lj_ir_kint(J, 0));
 tr = emitir(IRTI(IR_BSHR), tmp, lj_ir_kint(J, 3));
 if (idx != 0) {
   tridx = emitir(IRTI(IR_ADD), tridx, lj_ir_kint(J, -1));
   rec_idx_abc(J, tr, tridx, (uint32_t)nvararg);
 }
      } else {
 TRef tmp = lj_ir_kint(J, frofs);
 if (idx != 0) {
   TRef tmp2 = emitir(IRTI(IR_BSHL), tridx, lj_ir_kint(J, 3));
   tmp = emitir(IRTI(IR_ADD), tmp2, tmp);
 } else {
   tr = lj_ir_kint(J, 0);
 }
 emitir(IRTGI(IR_LT), fr, tmp);
      }
      if (idx != 0 && idx <= nvararg) {
 IRType t;
 TRef aref, vbase = emitir(IRT(IR_SUB, IRT_IGC), REF_BASE, fr);
 vbase = emitir(IRT(IR_ADD, IRT_PGC), vbase,
         lj_ir_kint(J, frofs-(8<<LJ_FR2)));
 t = itype2irt(&J->L->base[idx-2-LJ_FR2-nvararg]);
 aref = emitir(IRT(IR_AREF, IRT_PGC), vbase, tridx);
 tr = emitir(IRTG(IR_VLOAD, t), aref, 0);
 if (irtype_ispri(t)) tr = TREF_PRI(t);
      }
      J->base[dst-2-LJ_FR2] = tr;
      J->maxslot = dst-1-LJ_FR2;
      J->bcskip = 2;
    } else {
    nyivarg:
      setintV(&J->errinfo, BC_VARG);
      lj_trace_err_info(J, LJ_TRERR_NYIBC);
    }
  }
}
