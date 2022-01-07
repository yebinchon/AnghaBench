
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stacksize; int stack; int size_ci; int base_ci; } ;
typedef TYPE_1__ lua_State ;


 int CallInfo ;
 int TValue ;
 int luaM_freearray (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void freestack(lua_State*L,lua_State*L1){
luaM_freearray(L,L1->base_ci,L1->size_ci,CallInfo);
luaM_freearray(L,L1->stack,L1->stacksize,TValue);
}
