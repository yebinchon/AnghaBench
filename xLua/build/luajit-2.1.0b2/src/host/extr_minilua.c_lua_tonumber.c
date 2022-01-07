
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int TValue ;


 int * index2adr (int *,int) ;
 int nvalue (int const*) ;
 scalar_t__ tonumber (int const*,int *) ;

__attribute__((used)) static lua_Number lua_tonumber(lua_State*L,int idx){
TValue n;
const TValue*o=index2adr(L,idx);
if(tonumber(o,&n))
return nvalue(o);
else
return 0;
}
