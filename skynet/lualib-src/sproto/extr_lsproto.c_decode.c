
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sproto_arg {scalar_t__ tagname; int type; int length; int mainindex; scalar_t__ tagid; int index; scalar_t__ value; int subtype; int extra; struct decode_ud* ud; } ;
struct decode_ud {scalar_t__ deep; scalar_t__ array_tag; int result_index; int array_index; int mainindex_tag; int key_index; int * L; } ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int int64_t ;


 scalar_t__ ENCODE_DEEPLEVEL ;
 int SPROTO_CB_ERROR ;




 int luaL_checkstack (int *,int,int *) ;
 int luaL_error (int *,char*,...) ;
 void* lua_gettop (int *) ;
 int lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,scalar_t__,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_setfield (int *,int,scalar_t__) ;
 int lua_seti (int *,int,int ) ;
 int lua_settable (int *,int) ;
 int lua_settop (int *,int) ;
 int sproto_decode (int ,scalar_t__,int,int (*) (struct sproto_arg const*),struct decode_ud*) ;

__attribute__((used)) static int
decode(const struct sproto_arg *args) {
 struct decode_ud * self = args->ud;
 lua_State *L = self->L;
 if (self->deep >= ENCODE_DEEPLEVEL)
  return luaL_error(L, "The table is too deep");
 luaL_checkstack(L, 12, ((void*)0));
 if (args->index != 0) {

  if (args->tagname != self->array_tag) {
   self->array_tag = args->tagname;
   lua_newtable(L);
   lua_pushvalue(L, -1);
   lua_setfield(L, self->result_index, args->tagname);
   if (self->array_index) {
    lua_replace(L, self->array_index);
   } else {
    self->array_index = lua_gettop(L);
   }
   if (args->index < 0) {

    return 0;
   }
  }
 }
 switch (args->type) {
 case 130: {

  if (args->extra) {

   int64_t v = *(int64_t*)args->value;
   lua_Number vn = (lua_Number)v;
   vn /= args->extra;
   lua_pushnumber(L, vn);
  } else {
   int64_t v = *(int64_t*)args->value;
   lua_pushinteger(L, v);
  }
  break;
 }
 case 131: {
  int v = *(uint64_t*)args->value;
  lua_pushboolean(L,v);
  break;
 }
 case 129: {
  lua_pushlstring(L, args->value, args->length);
  break;
 }
 case 128: {
  struct decode_ud sub;
  int r;
  lua_newtable(L);
  sub.L = L;
  sub.result_index = lua_gettop(L);
  sub.deep = self->deep + 1;
  sub.array_index = 0;
  sub.array_tag = ((void*)0);
  if (args->mainindex >= 0) {

   sub.mainindex_tag = args->mainindex;
   lua_pushnil(L);
   sub.key_index = lua_gettop(L);

   r = sproto_decode(args->subtype, args->value, args->length, decode, &sub);
   if (r < 0)
    return SPROTO_CB_ERROR;
   if (r != args->length)
    return r;
   lua_pushvalue(L, sub.key_index);
   if (lua_isnil(L, -1)) {
    luaL_error(L, "Can't find main index (tag=%d) in [%s]", args->mainindex, args->tagname);
   }
   lua_pushvalue(L, sub.result_index);
   lua_settable(L, self->array_index);
   lua_settop(L, sub.result_index-1);
   return 0;
  } else {
   sub.mainindex_tag = -1;
   sub.key_index = 0;
   r = sproto_decode(args->subtype, args->value, args->length, decode, &sub);
   if (r < 0)
    return SPROTO_CB_ERROR;
   if (r != args->length)
    return r;
   lua_settop(L, sub.result_index);
   break;
  }
 }
 default:
  luaL_error(L, "Invalid type");
 }
 if (args->index > 0) {
  lua_seti(L, self->array_index, args->index);
 } else {
  if (self->mainindex_tag == args->tagid) {


   lua_pushvalue(L,-1);
   lua_replace(L, self->key_index);
  }
  lua_setfield(L, self->result_index, args->tagname);
 }

 return 0;
}
