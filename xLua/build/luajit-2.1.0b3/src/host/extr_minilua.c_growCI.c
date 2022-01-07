
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size_ci; int * ci; } ;
typedef TYPE_1__ lua_State ;
typedef int CallInfo ;


 int luaD_reallocCI (TYPE_1__*,int) ;
 int luaD_throw (TYPE_1__*,int) ;
 int luaG_runerror (TYPE_1__*,char*) ;

__attribute__((used)) static CallInfo*growCI(lua_State*L){
if(L->size_ci>20000)
luaD_throw(L,5);
else{
luaD_reallocCI(L,2*L->size_ci);
if(L->size_ci>20000)
luaG_runerror(L,"stack overflow");
}
return++L->ci;
}
