
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int BCReg ;


 scalar_t__ LJ_DUALNUM ;
 int LJ_TNUMX ;
 int LJ_TSTR ;
 int curr_topL (TYPE_1__*) ;
 int lj_err_argtype (TYPE_1__*,int,int ) ;
 int lj_lib_checkint (TYPE_1__*,int) ;
 int lj_lib_checknum (TYPE_1__*,int) ;
 int lj_lib_checkstr (TYPE_1__*,int) ;
 int * lj_obj_itypename ;
 int lua_assert (int) ;

void lj_meta_istype(lua_State *L, BCReg ra, BCReg tp)
{
  L->top = curr_topL(L);
  ra++; tp--;
  lua_assert(LJ_DUALNUM || tp != ~LJ_TNUMX);
  if (LJ_DUALNUM && tp == ~LJ_TNUMX) lj_lib_checkint(L, ra);
  else if (tp == ~LJ_TNUMX+1) lj_lib_checknum(L, ra);
  else if (tp == ~LJ_TSTR) lj_lib_checkstr(L, ra);
  else lj_err_argtype(L, ra, lj_obj_itypename[tp]);
}
