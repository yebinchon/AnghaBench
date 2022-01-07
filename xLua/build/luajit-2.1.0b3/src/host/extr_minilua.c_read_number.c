
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int FILE ;


 int fscanf (int *,char*,int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int read_number(lua_State*L,FILE*f){
lua_Number d;
if(fscanf(f,"%lf",&d)==1){
lua_pushnumber(L,d);
return 1;
}
else{
lua_pushnil(L);
return 0;
}
}
