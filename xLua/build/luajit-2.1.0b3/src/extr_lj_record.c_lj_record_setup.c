
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_29__ {scalar_t__ root; int startins; int startpc; int nk; } ;
struct TYPE_24__ {int pc; scalar_t__ idx; } ;
struct TYPE_30__ {scalar_t__ instunroll; scalar_t__* param; scalar_t__ loopunroll; scalar_t__ parent; size_t exitno; int prev_line; int * prev_pt; TYPE_12__* pt; int * startpc; TYPE_3__ cur; TYPE_11__ scev; int * pc; int bc_extent; int * bc_min; scalar_t__ loopref; scalar_t__ tailcalled; scalar_t__ retdepth; scalar_t__ framedepth; scalar_t__ maxslot; scalar_t__ baseslot; scalar_t__ slot; scalar_t__ base; scalar_t__ bpropcache; scalar_t__ rbchash; scalar_t__ chain; } ;
typedef TYPE_4__ jit_State ;
typedef scalar_t__ TraceNo ;
struct TYPE_32__ {scalar_t__ root; scalar_t__ nchild; TYPE_2__* snap; } ;
struct TYPE_26__ {scalar_t__ irt; } ;
struct TYPE_31__ {scalar_t__ prev; int o; TYPE_1__ t; scalar_t__ i; } ;
struct TYPE_28__ {scalar_t__ nent; scalar_t__ count; } ;
struct TYPE_27__ {int hookmask; } ;
struct TYPE_25__ {scalar_t__ framesize; } ;
typedef int TRef ;
typedef int MSize ;
typedef TYPE_5__ IRIns ;
typedef TYPE_6__ GCtrace ;


 int BCINS_AD (int ,int ,int ) ;
 scalar_t__ BC_FORL ;
 scalar_t__ BC_ITERC ;
 scalar_t__ BC_JFORI ;
 int BC_JMP ;
 TYPE_5__* IR (scalar_t__) ;
 int IRT (int ,int ) ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 scalar_t__ IRT_NIL ;
 int IRT_PGC ;
 int IRT_U8 ;
 int IRXLOAD_VOLATILE ;
 int IR_BAND ;
 int IR_BASE ;
 int IR_EQ ;
 int IR_KPRI ;
 int IR_XLOAD ;
 TYPE_21__* J2G (TYPE_4__*) ;
 size_t JIT_P_hotexit ;
 size_t JIT_P_instunroll ;
 size_t JIT_P_loopunroll ;
 size_t JIT_P_maxside ;
 size_t JIT_P_tryside ;
 scalar_t__ LJ_FR2 ;
 scalar_t__ LJ_MAX_JSLOTS ;
 int LJ_TRERR_STACKOV ;
 int LJ_TRLINK_INTERP ;
 int LUA_MASKCOUNT ;
 int LUA_MASKLINE ;
 scalar_t__ REF_NIL ;
 int REF_TRUE ;
 scalar_t__ bc_d (int ) ;
 int bc_j (int ) ;
 scalar_t__ bc_op (int ) ;
 int emitir (int ,int ,int ) ;
 int emitir_raw (int ,scalar_t__,size_t) ;
 int lj_ir_kint (TYPE_4__*,int) ;
 int lj_ir_kptr (TYPE_4__*,int *) ;
 int lj_record_stop (TYPE_4__*,int ,int ) ;
 int lj_snap_add (TYPE_4__*) ;
 int lj_snap_replay (TYPE_4__*,TYPE_6__*) ;
 int lj_trace_err (TYPE_4__*,int ) ;
 int memset (scalar_t__,int ,int) ;
 int * proto_bc (TYPE_12__*) ;
 int rec_for_loop (TYPE_4__*,int *,TYPE_11__*,int) ;
 int * rec_setup_root (TYPE_4__*) ;
 int setmref (int ,int *) ;
 TYPE_6__* traceref (TYPE_4__*,scalar_t__) ;

void lj_record_setup(jit_State *J)
{
  uint32_t i;


  memset(J->slot, 0, sizeof(J->slot));
  memset(J->chain, 0, sizeof(J->chain));



  memset(J->bpropcache, 0, sizeof(J->bpropcache));
  J->scev.idx = REF_NIL;
  setmref(J->scev.pc, ((void*)0));

  J->baseslot = 1+LJ_FR2;
  J->base = J->slot + J->baseslot;
  J->maxslot = 0;
  J->framedepth = 0;
  J->retdepth = 0;

  J->instunroll = J->param[JIT_P_instunroll];
  J->loopunroll = J->param[JIT_P_loopunroll];
  J->tailcalled = 0;
  J->loopref = 0;

  J->bc_min = ((void*)0);
  J->bc_extent = ~(MSize)0;


  emitir_raw(IRT(IR_BASE, IRT_PGC), J->parent, J->exitno);
  for (i = 0; i <= 2; i++) {
    IRIns *ir = IR(REF_NIL-i);
    ir->i = 0;
    ir->t.irt = (uint8_t)(IRT_NIL+i);
    ir->o = IR_KPRI;
    ir->prev = 0;
  }
  J->cur.nk = REF_TRUE;

  J->startpc = J->pc;
  setmref(J->cur.startpc, J->pc);
  if (J->parent) {
    GCtrace *T = traceref(J, J->parent);
    TraceNo root = T->root ? T->root : J->parent;
    J->cur.root = (uint16_t)root;
    J->cur.startins = BCINS_AD(BC_JMP, 0, 0);

    if (J->exitno == 0 && T->snap[0].nent == 0) {

      if (J->pc > proto_bc(J->pt) && bc_op(J->pc[-1]) == BC_JFORI &&
   bc_d(J->pc[bc_j(J->pc[-1])-1]) == root) {
 lj_snap_add(J);
 rec_for_loop(J, J->pc-1, &J->scev, 1);
 goto sidecheck;
      }
    } else {
      J->startpc = ((void*)0);
    }
    lj_snap_replay(J, T);
  sidecheck:
    if (traceref(J, J->cur.root)->nchild >= J->param[JIT_P_maxside] ||
 T->snap[J->exitno].count >= J->param[JIT_P_hotexit] +
        J->param[JIT_P_tryside]) {
      lj_record_stop(J, LJ_TRLINK_INTERP, 0);
    }
  } else {
    J->cur.root = 0;
    J->cur.startins = *J->pc;
    J->pc = rec_setup_root(J);



    lj_snap_add(J);
    if (bc_op(J->cur.startins) == BC_FORL)
      rec_for_loop(J, J->pc-1, &J->scev, 1);
    else if (bc_op(J->cur.startins) == BC_ITERC)
      J->startpc = ((void*)0);
    if (1 + J->pt->framesize >= LJ_MAX_JSLOTS)
      lj_trace_err(J, LJ_TRERR_STACKOV);
  }
}
