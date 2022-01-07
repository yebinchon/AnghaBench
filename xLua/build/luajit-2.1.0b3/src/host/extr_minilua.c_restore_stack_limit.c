
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size_ci; scalar_t__ base_ci; scalar_t__ ci; } ;
typedef TYPE_1__ lua_State ;


 int cast_int (scalar_t__) ;
 int luaD_reallocCI (TYPE_1__*,int) ;

__attribute__((used)) static void restore_stack_limit(lua_State*L){
if(L->size_ci>20000){
int inuse=cast_int(L->ci-L->base_ci);
if(inuse+1<20000)
luaD_reallocCI(L,20000);
}
}
