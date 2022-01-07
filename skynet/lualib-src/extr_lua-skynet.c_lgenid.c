
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int PTYPE_TAG_ALLOCSESSION ;
 int lua_pushinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_send (struct skynet_context*,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int
lgenid(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 int session = skynet_send(context, 0, 0, PTYPE_TAG_ALLOCSESSION , 0 , ((void*)0), 0);
 lua_pushinteger(L, session);
 return 1;
}
