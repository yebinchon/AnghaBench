
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int StkId ;


 int luaS_new (int *,char*) ;
 int lua_number2str (char*,int ) ;
 int nvalue (int ) ;
 int setsvalue (int *,int ,int ) ;
 int ttisnumber (int ) ;

__attribute__((used)) static int luaV_tostring(lua_State*L,StkId obj){
if(!ttisnumber(obj))
return 0;
else{
char s[32];
lua_Number n=nvalue(obj);
lua_number2str(s,n);
setsvalue(L,obj,luaS_new(L,s));
return 1;
}
}
