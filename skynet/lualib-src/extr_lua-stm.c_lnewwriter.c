
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boxstm {int obj; } ;
typedef int lua_State ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 struct boxstm* lua_newuserdata (int *,int) ;
 int lua_pushvalue (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int lua_upvalueindex (int) ;
 int memcpy (void*,char const*,size_t) ;
 void* skynet_malloc (size_t) ;
 int stm_new (void*,size_t) ;

__attribute__((used)) static int
lnewwriter(lua_State *L) {
 void * msg;
 size_t sz;
 if (lua_isuserdata(L,1)) {
  msg = lua_touserdata(L, 1);
  sz = (size_t)luaL_checkinteger(L, 2);
 } else {
  const char * tmp = luaL_checklstring(L,1,&sz);
  msg = skynet_malloc(sz);
  memcpy(msg, tmp, sz);
 }
 struct boxstm * box = lua_newuserdata(L, sizeof(*box));
 box->obj = stm_new(msg,sz);
 lua_pushvalue(L, lua_upvalueindex(1));
 lua_setmetatable(L, -2);

 return 1;
}
