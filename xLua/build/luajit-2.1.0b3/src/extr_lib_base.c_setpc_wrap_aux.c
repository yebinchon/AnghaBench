
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int * bcff; } ;
struct TYPE_5__ {int pc; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
typedef TYPE_2__ GCfunc ;


 TYPE_4__* L2GG (int *) ;
 int* lj_lib_init_coroutine ;
 int setmref (int ,int *) ;

__attribute__((used)) static void setpc_wrap_aux(lua_State *L, GCfunc *fn)
{
  setmref(fn->c.pc, &L2GG(L)->bcff[lj_lib_init_coroutine[1]+2]);
}
