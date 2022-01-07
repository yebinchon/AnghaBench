
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int stack; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
struct TYPE_10__ {scalar_t__ sizebc; } ;
typedef scalar_t__ MMS ;
typedef TYPE_2__ GCproto ;
typedef int GCfunc ;
typedef int BCReg ;
typedef scalar_t__ BCPos ;
typedef int BCIns ;


 scalar_t__ BC_ITERC ;
 int G (TYPE_1__*) ;
 int LJ_FR2 ;
 scalar_t__ MM__MAX ;
 scalar_t__ MM_call ;
 scalar_t__ NO_BCPOS ;
 int bc_a (int const) ;
 scalar_t__ bc_op (int const) ;
 scalar_t__ bcmode_mm (scalar_t__) ;
 size_t check_exp (int,scalar_t__) ;
 scalar_t__ debug_framepc (TYPE_1__*,int *,int *) ;
 int * frame_func (int *) ;
 scalar_t__ frame_isvarg (int *) ;
 int * frame_prev (int *) ;
 int * frame_prevd (int *) ;
 TYPE_2__* funcproto (int *) ;
 char const* lj_debug_slotname (TYPE_2__*,int const*,int,char const**) ;
 int mmname_str (int ,scalar_t__) ;
 int * proto_bc (TYPE_2__*) ;
 char* strdata (int ) ;
 int * tvref (int ) ;

const char *lj_debug_funcname(lua_State *L, cTValue *frame, const char **name)
{
  cTValue *pframe;
  GCfunc *fn;
  BCPos pc;
  if (frame <= tvref(L->stack)+LJ_FR2)
    return ((void*)0);
  if (frame_isvarg(frame))
    frame = frame_prevd(frame);
  pframe = frame_prev(frame);
  fn = frame_func(pframe);
  pc = debug_framepc(L, fn, frame);
  if (pc != NO_BCPOS) {
    GCproto *pt = funcproto(fn);
    const BCIns *ip = &proto_bc(pt)[check_exp(pc < pt->sizebc, pc)];
    MMS mm = bcmode_mm(bc_op(*ip));
    if (mm == MM_call) {
      BCReg slot = bc_a(*ip);
      if (bc_op(*ip) == BC_ITERC) slot -= 3;
      return lj_debug_slotname(pt, ip, slot, name);
    } else if (mm != MM__MAX) {
      *name = strdata(mmname_str(G(L), mm));
      return "metamethod";
    }
  }
  return ((void*)0);
}
