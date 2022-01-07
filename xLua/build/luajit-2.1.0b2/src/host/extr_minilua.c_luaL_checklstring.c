
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* lua_tolstring (int *,int,size_t*) ;
 int tag_error (int *,int,int) ;

__attribute__((used)) static const char*luaL_checklstring(lua_State*L,int narg,size_t*len){
const char*s=lua_tolstring(L,narg,len);
if(!s)tag_error(L,narg,4);
return s;
}
