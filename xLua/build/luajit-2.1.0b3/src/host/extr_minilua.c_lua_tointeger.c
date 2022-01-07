
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;
typedef int TValue ;


 int * index2adr (int *,int) ;
 int lua_number2integer (int ,int ) ;
 int nvalue (int const*) ;
 scalar_t__ tonumber (int const*,int *) ;

__attribute__((used)) static lua_Integer lua_tointeger(lua_State*L,int idx){
TValue n;
const TValue*o=index2adr(L,idx);
if(tonumber(o,&n)){
lua_Integer res;
lua_Number num=nvalue(o);
lua_number2integer(res,num);
return res;
}
else
return 0;
}
