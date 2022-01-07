
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int dispatchmode; int hookmask; } ;
typedef TYPE_1__ global_State ;
struct TYPE_10__ {int * dispatch; } ;
struct TYPE_9__ {int flags; scalar_t__ state; } ;
typedef int ASMFunction ;


 size_t BC_FORL ;
 size_t BC_FUNCF ;
 size_t BC_FUNCV ;
 size_t BC_IFORL ;
 size_t BC_IFUNCF ;
 size_t BC_IFUNCV ;
 size_t BC_IITERL ;
 size_t BC_ILOOP ;
 size_t BC_ITERL ;
 size_t BC_LOOP ;
 size_t BC_RET ;
 size_t BC_RET0 ;
 size_t BC_RET1 ;
 size_t BC_RETM ;
 int DISPMODE_CALL ;
 int DISPMODE_INS ;
 int DISPMODE_JIT ;
 int DISPMODE_PROF ;
 int DISPMODE_REC ;
 int DISPMODE_RET ;
 TYPE_6__* G2GG (TYPE_1__*) ;
 TYPE_4__* G2J (TYPE_1__*) ;
 size_t GG_LEN_DDISP ;
 int GG_LEN_SDISP ;
 int HOOK_PROFILE ;
 int JIT_F_ON ;
 scalar_t__ LJ_TRACE_IDLE ;
 int LUA_MASKCALL ;
 int LUA_MASKCOUNT ;
 int LUA_MASKLINE ;
 int LUA_MASKRET ;
 int * lj_bc_ofs ;
 int lj_dispatch_init_hotcount (TYPE_1__*) ;
 int lj_vm_callhook ;
 int lj_vm_inshook ;
 int lj_vm_profhook ;
 int lj_vm_record ;
 int lj_vm_rethook ;
 int makeasmfunc (int ) ;
 int memcpy (int *,int *,int) ;

void lj_dispatch_update(global_State *g)
{
  uint8_t oldmode = g->dispatchmode;
  uint8_t mode = 0;
  mode |= (g->hookmask & (LUA_MASKLINE|LUA_MASKCOUNT)) ? DISPMODE_INS : 0;
  mode |= (g->hookmask & LUA_MASKCALL) ? DISPMODE_CALL : 0;
  mode |= (g->hookmask & LUA_MASKRET) ? DISPMODE_RET : 0;
  if (oldmode != mode) {
    ASMFunction *disp = G2GG(g)->dispatch;
    ASMFunction f_forl, f_iterl, f_loop, f_funcf, f_funcv;
    g->dispatchmode = mode;


    if ((mode & (DISPMODE_JIT|DISPMODE_REC)) == DISPMODE_JIT) {
      f_forl = makeasmfunc(lj_bc_ofs[BC_FORL]);
      f_iterl = makeasmfunc(lj_bc_ofs[BC_ITERL]);
      f_loop = makeasmfunc(lj_bc_ofs[BC_LOOP]);
      f_funcf = makeasmfunc(lj_bc_ofs[BC_FUNCF]);
      f_funcv = makeasmfunc(lj_bc_ofs[BC_FUNCV]);
    } else {
      f_forl = disp[GG_LEN_DDISP+BC_IFORL];
      f_iterl = disp[GG_LEN_DDISP+BC_IITERL];
      f_loop = disp[GG_LEN_DDISP+BC_ILOOP];
      f_funcf = makeasmfunc(lj_bc_ofs[BC_IFUNCF]);
      f_funcv = makeasmfunc(lj_bc_ofs[BC_IFUNCV]);
    }

    disp[GG_LEN_DDISP+BC_FORL] = f_forl;
    disp[GG_LEN_DDISP+BC_ITERL] = f_iterl;
    disp[GG_LEN_DDISP+BC_LOOP] = f_loop;


    if ((oldmode ^ mode) & (DISPMODE_PROF|DISPMODE_REC|DISPMODE_INS)) {

      if (!(mode & DISPMODE_INS)) {

 memcpy(&disp[0], &disp[GG_LEN_DDISP], GG_LEN_SDISP*sizeof(ASMFunction));

 if ((mode & DISPMODE_RET)) {
   disp[BC_RETM] = lj_vm_rethook;
   disp[BC_RET] = lj_vm_rethook;
   disp[BC_RET0] = lj_vm_rethook;
   disp[BC_RET1] = lj_vm_rethook;
 }
      } else {

 ASMFunction f = (mode & DISPMODE_PROF) ? lj_vm_profhook :
   (mode & DISPMODE_REC) ? lj_vm_record : lj_vm_inshook;
 uint32_t i;
 for (i = 0; i < GG_LEN_SDISP; i++)
   disp[i] = f;
      }
    } else if (!(mode & DISPMODE_INS)) {

      disp[BC_FORL] = f_forl;
      disp[BC_ITERL] = f_iterl;
      disp[BC_LOOP] = f_loop;

      if ((mode & DISPMODE_RET)) {
 disp[BC_RETM] = lj_vm_rethook;
 disp[BC_RET] = lj_vm_rethook;
 disp[BC_RET0] = lj_vm_rethook;
 disp[BC_RET1] = lj_vm_rethook;
      } else {
 disp[BC_RETM] = disp[GG_LEN_DDISP+BC_RETM];
 disp[BC_RET] = disp[GG_LEN_DDISP+BC_RET];
 disp[BC_RET0] = disp[GG_LEN_DDISP+BC_RET0];
 disp[BC_RET1] = disp[GG_LEN_DDISP+BC_RET1];
      }
    }


    if ((oldmode ^ mode) & DISPMODE_CALL) {
      uint32_t i;
      if ((mode & DISPMODE_CALL) == 0) {
 for (i = GG_LEN_SDISP; i < GG_LEN_DDISP; i++)
   disp[i] = makeasmfunc(lj_bc_ofs[i]);
      } else {
 for (i = GG_LEN_SDISP; i < GG_LEN_DDISP; i++)
   disp[i] = lj_vm_callhook;
      }
    }
    if (!(mode & DISPMODE_CALL)) {
      disp[BC_FUNCF] = f_funcf;
      disp[BC_FUNCV] = f_funcv;
    }






  }
}
