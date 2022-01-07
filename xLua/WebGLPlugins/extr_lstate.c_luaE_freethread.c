
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * openupval; int stack; } ;
typedef TYPE_1__ lua_State ;
typedef int LX ;


 int freestack (TYPE_1__*) ;
 int * fromstate (TYPE_1__*) ;
 int luaF_close (TYPE_1__*,int ) ;
 int luaM_free (TYPE_1__*,int *) ;
 int lua_assert (int ) ;
 int luai_userstatefree (TYPE_1__*,TYPE_1__*) ;

void luaE_freethread (lua_State *L, lua_State *L1) {
  LX *l = fromstate(L1);
  luaF_close(L1, L1->stack);
  lua_assert(L1->openupval == ((void*)0));
  luai_userstatefree(L, L1);
  freestack(L1);
  luaM_free(L, l);
}
