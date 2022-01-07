
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {size_t len; } ;
typedef int StkId ;


 int index2adr (int *,int) ;
 int luaC_checkGC (int *) ;
 int luaV_tostring (int *,int ) ;
 char const* svalue (int ) ;
 TYPE_1__* tsvalue (int ) ;
 int ttisstring (int ) ;

__attribute__((used)) static const char*lua_tolstring(lua_State*L,int idx,size_t*len){
StkId o=index2adr(L,idx);
if(!ttisstring(o)){
if(!luaV_tostring(L,o)){
if(len!=((void*)0))*len=0;
return ((void*)0);
}
luaC_checkGC(L);
o=index2adr(L,idx);
}
if(len!=((void*)0))*len=tsvalue(o)->len;
return svalue(o);
}
