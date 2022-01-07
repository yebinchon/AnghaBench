
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boxstm {int obj; } ;
typedef int lua_State ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int memcpy (void*,char const*,size_t) ;
 void* skynet_malloc (size_t) ;
 int stm_update (int ,void*,size_t) ;

__attribute__((used)) static int
lupdate(lua_State *L) {
 struct boxstm * box = lua_touserdata(L, 1);
 void * msg;
 size_t sz;
 if (lua_isuserdata(L, 2)) {
  msg = lua_touserdata(L, 2);
  sz = (size_t)luaL_checkinteger(L, 3);
 } else {
  const char * tmp = luaL_checklstring(L,2,&sz);
  msg = skynet_malloc(sz);
  memcpy(msg, tmp, sz);
 }
 stm_update(box->obj, msg, sz);

 return 0;
}
