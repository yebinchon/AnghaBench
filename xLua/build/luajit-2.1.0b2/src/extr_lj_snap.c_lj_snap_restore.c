
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
typedef struct TYPE_32__ TYPE_26__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_33__ {scalar_t__ base; TYPE_4__* top; int maxstack; int cframe; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_34__ {size_t exitno; TYPE_2__* L; int parent; } ;
typedef TYPE_3__ jit_State ;
typedef int int32_t ;
struct TYPE_38__ {int* snapmap; TYPE_6__* ir; TYPE_5__* snap; } ;
struct TYPE_37__ {scalar_t__ r; } ;
struct TYPE_36__ {size_t nent; size_t mapofs; int topslot; int nslots; } ;
struct TYPE_31__ {int lo; int hi; } ;
struct TYPE_35__ {TYPE_1__ u32; } ;
struct TYPE_32__ {int framesize; } ;
typedef TYPE_4__ TValue ;
typedef TYPE_5__ SnapShot ;
typedef size_t SnapNo ;
typedef int SnapEntry ;
typedef size_t MSize ;
typedef size_t IRRef ;
typedef TYPE_6__ IRIns ;
typedef TYPE_7__ GCtrace ;
typedef int ExitState ;
typedef int BloomFilter ;
typedef int BCIns ;




 int BC_FUNCF ;


 int LJ_FR2 ;
 scalar_t__ LJ_SOFTFP ;
 scalar_t__ LJ_UNLIKELY (int) ;
 scalar_t__ RID_SUNK ;
 int SNAP_CONT ;
 int SNAP_FRAME ;
 int SNAP_NORESTORE ;
 int SNAP_SOFTFPNUM ;
 int bc_op (int const) ;
 int cframe_raw (int ) ;
 int copyTV (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;
 TYPE_26__* curr_proto (TYPE_2__*) ;
 void* curr_topL (TYPE_2__*) ;
 int frame_ftsz (TYPE_4__*) ;
 int lj_state_growstack (TYPE_2__*,int) ;
 int lua_assert (int) ;
 int setcframe_pc (int ,int const*) ;
 int setframe_ftsz (TYPE_4__*,int ) ;
 int snap_nextofs (TYPE_7__*,TYPE_5__*) ;
 int * snap_pc (int) ;
 size_t snap_ref (int) ;
 int snap_renamefilter (TYPE_7__*,size_t) ;
 int snap_restoreval (TYPE_3__*,TYPE_7__*,int *,size_t,int ,size_t,TYPE_4__*) ;
 size_t snap_slot (int) ;
 int snap_unsink (TYPE_3__*,TYPE_7__*,int *,size_t,int ,TYPE_6__*,TYPE_4__*) ;
 TYPE_7__* traceref (TYPE_3__*,int ) ;
 scalar_t__ tvisint (TYPE_4__*) ;
 scalar_t__ tvref (int ) ;

const BCIns *lj_snap_restore(jit_State *J, void *exptr)
{
  ExitState *ex = (ExitState *)exptr;
  SnapNo snapno = J->exitno;
  GCtrace *T = traceref(J, J->parent);
  SnapShot *snap = &T->snap[snapno];
  MSize n, nent = snap->nent;
  SnapEntry *map = &T->snapmap[snap->mapofs];
  SnapEntry *flinks = &T->snapmap[snap_nextofs(T, snap)-1];
  ptrdiff_t ftsz0;
  TValue *frame;
  BloomFilter rfilt = snap_renamefilter(T, snapno);
  const BCIns *pc = snap_pc(map[nent]);
  lua_State *L = J->L;


  setcframe_pc(cframe_raw(L->cframe), pc+1);


  if (LJ_UNLIKELY(L->base + snap->topslot >= tvref(L->maxstack))) {
    L->top = curr_topL(L);
    lj_state_growstack(L, snap->topslot - curr_proto(L)->framesize);
  }


  frame = L->base-1;
  ftsz0 = frame_ftsz(frame);
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    if (!(sn & SNAP_NORESTORE)) {
      TValue *o = &frame[snap_slot(sn)];
      IRRef ref = snap_ref(sn);
      IRIns *ir = &T->ir[ref];
      if (ir->r == RID_SUNK) {
 MSize j;
 for (j = 0; j < n; j++)
   if (snap_ref(map[j]) == ref) {
     copyTV(L, o, &frame[snap_slot(map[j])]);
     goto dupslot;
   }
 snap_unsink(J, T, ex, snapno, rfilt, ir, o);
      dupslot:
 continue;
      }
      snap_restoreval(J, T, ex, snapno, rfilt, ref, o);
      if (LJ_SOFTFP && (sn & SNAP_SOFTFPNUM) && tvisint(o)) {
 TValue tmp;
 snap_restoreval(J, T, ex, snapno, rfilt, ref+1, &tmp);
 o->u32.hi = tmp.u32.lo;
      } else if ((sn & (SNAP_CONT|SNAP_FRAME))) {
 lua_assert(!LJ_FR2);

 setframe_ftsz(o, snap_slot(sn) != 0 ? (int32_t)*flinks-- : ftsz0);
 L->base = o+1;
      }
    }
  }
  lua_assert(map + nent == flinks);


  switch (bc_op(*pc)) {
  default:
    if (bc_op(*pc) < BC_FUNCF) {
      L->top = curr_topL(L);
      break;
    }

  case 131: case 130: case 129: case 128:
    L->top = frame + snap->nslots;
    break;
  }
  return pc;
}
