
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int type; char* name; int wtime; int rtime; int wbuffer; int write; int read; int opaque; int id; } ;
typedef int lua_State ;






 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static void
getinfo(lua_State *L, struct socket_info *si) {
 lua_newtable(L);
 lua_pushinteger(L, si->id);
 lua_setfield(L, -2, "id");
 lua_pushinteger(L, si->opaque);
 lua_setfield(L, -2, "address");
 switch(si->type) {
 case 130:
  lua_pushstring(L, "LISTEN");
  lua_setfield(L, -2, "type");
  lua_pushinteger(L, si->read);
  lua_setfield(L, -2, "accept");
  lua_pushinteger(L, si->rtime);
  lua_setfield(L, -2, "rtime");
  if (si->name[0]) {
   lua_pushstring(L, si->name);
   lua_setfield(L, -2, "sock");
  }
  return;
 case 129:
  lua_pushstring(L, "TCP");
  break;
 case 128:
  lua_pushstring(L, "UDP");
  break;
 case 131:
  lua_pushstring(L, "BIND");
  break;
 default:
  lua_pushstring(L, "UNKNOWN");
  lua_setfield(L, -2, "type");
  return;
 }
 lua_setfield(L, -2, "type");
 lua_pushinteger(L, si->read);
 lua_setfield(L, -2, "read");
 lua_pushinteger(L, si->write);
 lua_setfield(L, -2, "write");
 lua_pushinteger(L, si->wbuffer);
 lua_setfield(L, -2, "wbuffer");
 lua_pushinteger(L, si->rtime);
 lua_setfield(L, -2, "rtime");
 lua_pushinteger(L, si->wtime);
 lua_setfield(L, -2, "wtime");
 if (si->name[0]) {
  lua_pushstring(L, si->name);
  lua_setfield(L, -2, "peer");
 }
}
