
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {void* bc_cfunc_int; void* bc_cfunc_ext; } ;
struct TYPE_5__ {int got; void** bcff; TYPE_1__ g; int * dispatch; } ;
typedef TYPE_2__ GG_State ;
typedef int ASMFunction ;


 void* BCINS_AD (scalar_t__,int ,int ) ;
 size_t BC_FORL ;
 scalar_t__ BC_FUNCC ;
 size_t BC_FUNCF ;
 size_t BC_FUNCV ;
 size_t BC_IFORL ;
 size_t BC_IFUNCF ;
 size_t BC_IFUNCV ;
 size_t BC_IITERL ;
 size_t BC_ILOOP ;
 size_t BC_ITERL ;
 size_t BC_LOOP ;
 scalar_t__ BC__MAX ;
 size_t GG_LEN_DDISP ;
 size_t GG_LEN_SDISP ;
 size_t GG_NUM_ASMFF ;
 int LJ_GOT__MAX ;
 int LUA_MINSTACK ;
 int dispatch_got ;
 int * lj_bc_ofs ;
 int makeasmfunc (int ) ;
 int memcpy (int ,int ,int) ;

void lj_dispatch_init(GG_State *GG)
{
  uint32_t i;
  ASMFunction *disp = GG->dispatch;
  for (i = 0; i < GG_LEN_SDISP; i++)
    disp[GG_LEN_DDISP+i] = disp[i] = makeasmfunc(lj_bc_ofs[i]);
  for (i = GG_LEN_SDISP; i < GG_LEN_DDISP; i++)
    disp[i] = makeasmfunc(lj_bc_ofs[i]);

  disp[BC_FORL] = disp[BC_IFORL];
  disp[BC_ITERL] = disp[BC_IITERL];
  disp[BC_LOOP] = disp[BC_ILOOP];
  disp[BC_FUNCF] = disp[BC_IFUNCF];
  disp[BC_FUNCV] = disp[BC_IFUNCV];
  GG->g.bc_cfunc_ext = GG->g.bc_cfunc_int = BCINS_AD(BC_FUNCC, LUA_MINSTACK, 0);
  for (i = 0; i < GG_NUM_ASMFF; i++)
    GG->bcff[i] = BCINS_AD(BC__MAX+i, 0, 0);



}
