
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int StkId ;


 int index2adr (int *,int) ;
 int iscfunction (int ) ;

__attribute__((used)) static int lua_iscfunction(lua_State*L,int idx){
StkId o=index2adr(L,idx);
return iscfunction(o);
}
