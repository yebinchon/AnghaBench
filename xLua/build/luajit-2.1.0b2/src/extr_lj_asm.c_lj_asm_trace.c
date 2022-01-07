
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_33__ {size_t nins; TYPE_1__* ir; } ;
struct TYPE_35__ {int flags; scalar_t__ parent; int loopref; TYPE_2__ cur; } ;
typedef TYPE_4__ jit_State ;
struct TYPE_38__ {int flags; scalar_t__ curins; scalar_t__ gcsteps; scalar_t__ stopins; scalar_t__ freeset; int * mcp; int * mctop; int loopref; int * mcloop; TYPE_4__* J; int * parent; TYPE_6__* T; int fuseref; int sectref; scalar_t__ topslot; int * flagmcp; int * mcp_prev; int * realign; scalar_t__ mcbot; scalar_t__ mclim; scalar_t__ loopinv; int ir; } ;
struct TYPE_37__ {scalar_t__ nins; int * mcode; void* szmcode; int link; void* mcloop; TYPE_3__* snap; int ir; } ;
struct TYPE_36__ {int t; } ;
struct TYPE_34__ {scalar_t__ ref; } ;
struct TYPE_32__ {int o; } ;
typedef void* MSize ;
typedef int MCode ;
typedef TYPE_5__ IRIns ;
typedef TYPE_6__ GCtrace ;
typedef TYPE_7__ ASMState ;


 int FUSE_DISABLED ;
 TYPE_5__* IR (scalar_t__) ;
 int IR_NOP ;
 int JIT_F_OPT_DCE ;
 int JIT_F_OPT_FUSE ;
 scalar_t__ LJ_32 ;
 int LJ_TRERR_BADRA ;
 scalar_t__ MCLIM_REDZONE ;
 int RA_DBGX (TYPE_7__*) ;
 int RA_DBG_FLUSH () ;
 int RA_DBG_REF () ;
 int RA_DBG_START () ;
 scalar_t__ RSET_ALL ;
 int asm_gc_check (TYPE_7__*) ;
 int asm_head_root (TYPE_7__*) ;
 int asm_head_side (TYPE_7__*) ;
 int asm_ir (TYPE_7__*,TYPE_5__*) ;
 int asm_phi_fixup (TYPE_7__*) ;
 int asm_setup_regsp (TYPE_7__*) ;
 int asm_setup_target (TYPE_7__*) ;
 int asm_snap_prep (TYPE_7__*) ;
 int asm_tail_fixup (TYPE_7__*,int ) ;
 int asm_tail_link (TYPE_7__*) ;
 int asm_tail_prep (TYPE_7__*) ;
 int checkmclim (TYPE_7__*) ;
 int ir_sideeff (TYPE_5__*) ;
 scalar_t__ irt_isguard (int ) ;
 scalar_t__ irt_isint64 (int ) ;
 size_t lj_ir_nextins (TYPE_4__*) ;
 int * lj_mcode_reserve (TYPE_4__*,scalar_t__*) ;
 int lj_mcode_sync (int *,int *) ;
 int lj_trace_err (TYPE_4__*,int ) ;
 int lua_assert (int) ;
 int ra_evictk (TYPE_7__*) ;
 int ra_used (TYPE_5__*) ;
 int * traceref (TYPE_4__*,scalar_t__) ;

void lj_asm_trace(jit_State *J, GCtrace *T)
{
  ASMState as_;
  ASMState *as = &as_;
  MCode *origtop;


  J->cur.nins = lj_ir_nextins(J);
  J->cur.ir[J->cur.nins].o = IR_NOP;


  as->J = J;
  as->T = T;
  as->ir = T->ir;
  as->flags = J->flags;
  as->loopref = J->loopref;
  as->realign = ((void*)0);
  as->loopinv = 0;
  as->parent = J->parent ? traceref(J, J->parent) : ((void*)0);


  as->mctop = origtop = lj_mcode_reserve(J, &as->mcbot);
  as->mcp = as->mctop;
  as->mclim = as->mcbot + MCLIM_REDZONE;
  asm_setup_target(as);

  do {
    as->mcp = as->mctop;



    as->curins = T->nins;
    RA_DBG_START();
    RA_DBGX((as, "===== STOP ====="));


    asm_tail_prep(as);
    as->mcloop = ((void*)0);
    as->flagmcp = ((void*)0);
    as->topslot = 0;
    as->gcsteps = 0;
    as->sectref = as->loopref;
    as->fuseref = (as->flags & JIT_F_OPT_FUSE) ? as->loopref : FUSE_DISABLED;
    asm_setup_regsp(as);
    if (!as->loopref)
      asm_tail_link(as);


    for (as->curins--; as->curins > as->stopins; as->curins--) {
      IRIns *ir = IR(as->curins);
      lua_assert(!(LJ_32 && irt_isint64(ir->t)));
      if (!ra_used(ir) && !ir_sideeff(ir) && (as->flags & JIT_F_OPT_DCE))
 continue;
      if (irt_isguard(ir->t))
 asm_snap_prep(as);
      RA_DBG_REF();
      checkmclim(as);
      asm_ir(as, ir);
    }
  } while (as->realign);


  RA_DBG_REF();
  checkmclim(as);
  if (as->gcsteps > 0) {
    as->curins = as->T->snap[0].ref;
    asm_snap_prep(as);
    asm_gc_check(as);
  }
  ra_evictk(as);
  if (as->parent)
    asm_head_side(as);
  else
    asm_head_root(as);
  asm_phi_fixup(as);

  RA_DBGX((as, "===== START ===="));
  RA_DBG_FLUSH();
  if (as->freeset != RSET_ALL)
    lj_trace_err(as->J, LJ_TRERR_BADRA);


  T->mcode = as->mcp;
  T->mcloop = as->mcloop ? (MSize)((char *)as->mcloop - (char *)as->mcp) : 0;
  if (!as->loopref)
    asm_tail_fixup(as, T->link);
  T->szmcode = (MSize)((char *)as->mctop - (char *)as->mcp);
  lj_mcode_sync(T->mcode, origtop);
}
