
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_11__ {int nsnapmap; int nsnap; int nins; } ;
struct TYPE_13__ {int instunroll; TYPE_2__* L; TYPE_1__ cur; } ;
typedef TYPE_3__ jit_State ;
typedef int int32_t ;
typedef int TraceError ;
struct TYPE_14__ {scalar_t__ sizesubst; int * subst; TYPE_3__* J; } ;
typedef int SnapNo ;
typedef int MSize ;
typedef TYPE_4__ LoopState ;
typedef int IRRef ;


 int IRRef1 ;
 int J2G (TYPE_3__*) ;


 scalar_t__ LJ_UNLIKELY (int) ;
 int LUA_ERRRUN ;
 int cploop_opt ;
 int lj_err_throw (TYPE_2__*,int) ;
 int lj_mem_freevec (int ,int *,scalar_t__,int ) ;
 int lj_vm_cpcall (TYPE_2__*,int *,TYPE_4__*,int ) ;
 int loop_undo (TYPE_3__*,int ,int ,int ) ;
 int numberVint (scalar_t__) ;
 scalar_t__ tvisnumber (scalar_t__) ;

int lj_opt_loop(jit_State *J)
{
  IRRef nins = J->cur.nins;
  SnapNo nsnap = J->cur.nsnap;
  MSize nsnapmap = J->cur.nsnapmap;
  LoopState lps;
  int errcode;
  lps.J = J;
  lps.subst = ((void*)0);
  lps.sizesubst = 0;
  errcode = lj_vm_cpcall(J->L, ((void*)0), &lps, cploop_opt);
  lj_mem_freevec(J2G(J), lps.subst, lps.sizesubst, IRRef1);
  if (LJ_UNLIKELY(errcode)) {
    lua_State *L = J->L;
    if (errcode == LUA_ERRRUN && tvisnumber(L->top-1)) {
      int32_t e = numberVint(L->top-1);
      switch ((TraceError)e) {
      case 128:
      case 129:

 if (--J->instunroll < 0)
   break;
 L->top--;
 loop_undo(J, nins, nsnap, nsnapmap);
 return 1;
      default:
 break;
      }
    }
    lj_err_throw(L, errcode);
  }
  return 0;
}
