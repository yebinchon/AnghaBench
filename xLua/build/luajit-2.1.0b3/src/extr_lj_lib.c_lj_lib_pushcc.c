
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_11__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
typedef int lua_CFunction ;
struct TYPE_13__ {int bc_cfunc_int; } ;
struct TYPE_10__ {int pc; scalar_t__ ffid; } ;
struct TYPE_12__ {TYPE_1__ c; } ;
typedef TYPE_3__ GCfunc ;


 TYPE_8__* G (TYPE_2__*) ;
 TYPE_3__* funcV (scalar_t__) ;
 int lua_pushcclosure (TYPE_2__*,int ,int) ;
 int setmref (int ,int *) ;

GCfunc *lj_lib_pushcc(lua_State *L, lua_CFunction f, int id, int n)
{
  GCfunc *fn;
  lua_pushcclosure(L, f, n);
  fn = funcV(L->top-1);
  fn->c.ffid = (uint8_t)id;
  setmref(fn->c.pc, &G(L)->bc_cfunc_int);
  return fn;
}
