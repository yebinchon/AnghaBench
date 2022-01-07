
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {size_t p; int lvl; int * L; } ;
typedef TYPE_1__ luaL_Buffer ;


 int adjuststack (TYPE_1__*) ;
 size_t bufffree (TYPE_1__*) ;
 scalar_t__ emptybuffer (TYPE_1__*) ;
 int lua_insert (int *,int) ;
 int lua_pop (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (size_t,char const*,size_t) ;

__attribute__((used)) static void luaL_addvalue(luaL_Buffer*B){
lua_State*L=B->L;
size_t vl;
const char*s=lua_tolstring(L,-1,&vl);
if(vl<=bufffree(B)){
memcpy(B->p,s,vl);
B->p+=vl;
lua_pop(L,1);
}
else{
if(emptybuffer(B))
lua_insert(L,-2);
B->lvl++;
adjuststack(B);
}
}
