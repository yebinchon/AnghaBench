
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_arg {scalar_t__ index; int tagname; int * ud; } ;
typedef int lua_State ;


 int SPROTO_CB_NIL ;
 int SPROTO_CB_NOARRAY ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawset (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int push_default (struct sproto_arg const*,int) ;

__attribute__((used)) static int
encode_default(const struct sproto_arg *args) {
 lua_State *L = args->ud;
 lua_pushstring(L, args->tagname);
 if (args->index > 0) {
  lua_newtable(L);
  push_default(args, 1);
  lua_setfield(L, -2, "__array");
  lua_rawset(L, -3);
  return SPROTO_CB_NOARRAY;
 } else {
  push_default(args, 0);
  lua_rawset(L, -3);
  return SPROTO_CB_NIL;
 }
}
