
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;


 int * index2adr (int *,int) ;
 int l_isfalse (int const*) ;

__attribute__((used)) static int lua_toboolean(lua_State*L,int idx){
const TValue*o=index2adr(L,idx);
return!l_isfalse(o);
}
