
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int type ;
struct read_block {int dummy; } ;
typedef int lua_State ;


 int LUA_MINSTACK ;
 int MAX_COOKIE ;
 int TYPE_NUMBER ;
 int TYPE_NUMBER_REAL ;
 int get_integer (int *,struct read_block*,int) ;
 int invalid_stream (int *,struct read_block*) ;
 int luaL_checkstack (int *,int ,int *) ;
 int lua_createtable (int *,int,int ) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int* rb_read (struct read_block*,int) ;
 int unpack_one (int *,struct read_block*) ;

__attribute__((used)) static void
unpack_table(lua_State *L, struct read_block *rb, int array_size) {
 if (array_size == MAX_COOKIE-1) {
  uint8_t type;
  uint8_t *t = rb_read(rb, sizeof(type));
  if (t==((void*)0)) {
   invalid_stream(L,rb);
  }
  type = *t;
  int cookie = type >> 3;
  if ((type & 7) != TYPE_NUMBER || cookie == TYPE_NUMBER_REAL) {
   invalid_stream(L,rb);
  }
  array_size = get_integer(L,rb,cookie);
 }
 luaL_checkstack(L,LUA_MINSTACK,((void*)0));
 lua_createtable(L,array_size,0);
 int i;
 for (i=1;i<=array_size;i++) {
  unpack_one(L,rb);
  lua_rawseti(L,-2,i);
 }
 for (;;) {
  unpack_one(L,rb);
  if (lua_isnil(L,-1)) {
   lua_pop(L,1);
   return;
  }
  unpack_one(L,rb);
  lua_rawset(L,-3);
 }
}
