
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef double lua_Number ;
typedef int UB ;
typedef int U64 ;


 int luaL_typerror (int *,int,char*) ;
 int lua_isnumber (int *,int) ;
 double lua_tonumber (int *,int) ;

__attribute__((used)) static UB barg(lua_State*L,int idx){
union{lua_Number n;U64 b;}bn;
bn.n=lua_tonumber(L,idx)+6755399441055744.0;
if(bn.n==0.0&&!lua_isnumber(L,idx))luaL_typerror(L,idx,"number");
return(UB)bn.b;
}
