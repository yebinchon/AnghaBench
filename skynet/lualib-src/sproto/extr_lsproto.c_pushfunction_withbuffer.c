
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_CFunction ;


 int ENCODE_BUFFERSIZE ;
 int lua_newuserdata (int *,int ) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static void
pushfunction_withbuffer(lua_State *L, const char * name, lua_CFunction func) {
 lua_newuserdata(L, ENCODE_BUFFERSIZE);
 lua_pushinteger(L, ENCODE_BUFFERSIZE);
 lua_pushcclosure(L, func, 2);
 lua_setfield(L, -2, name);
}
