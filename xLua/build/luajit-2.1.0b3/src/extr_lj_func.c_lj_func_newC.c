
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lua_State ;
struct TYPE_7__ {int bc_cfunc_ext; } ;
struct TYPE_5__ {int env; int pc; scalar_t__ nupvalues; int ffid; int gct; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
typedef scalar_t__ MSize ;
typedef int GCtab ;
typedef TYPE_2__ GCfunc ;


 int FF_C ;
 TYPE_4__* G (int *) ;
 int LJ_TFUNC ;
 scalar_t__ lj_mem_newgco (int *,int ) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;
 int setmref (int ,int *) ;
 int sizeCfunc (scalar_t__) ;

GCfunc *lj_func_newC(lua_State *L, MSize nelems, GCtab *env)
{
  GCfunc *fn = (GCfunc *)lj_mem_newgco(L, sizeCfunc(nelems));
  fn->c.gct = ~LJ_TFUNC;
  fn->c.ffid = FF_C;
  fn->c.nupvalues = (uint8_t)nelems;

  setmref(fn->c.pc, &G(L)->bc_cfunc_ext);
  setgcref(fn->c.env, obj2gco(env));
  return fn;
}
