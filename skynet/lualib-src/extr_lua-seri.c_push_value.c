
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct read_block {int dummy; } ;
typedef int n ;
typedef int lua_State ;






 int TYPE_NUMBER_REAL ;



 int get_buffer (int *,struct read_block*,int) ;
 int get_integer (int *,struct read_block*,int) ;
 int get_pointer (int *,struct read_block*) ;
 int get_real (int *,struct read_block*) ;
 int invalid_stream (int *,struct read_block*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int memcpy (int*,int*,int) ;
 int* rb_read (struct read_block*,int) ;
 int unpack_table (int *,struct read_block*,int) ;

__attribute__((used)) static void
push_value(lua_State *L, struct read_block *rb, int type, int cookie) {
 switch(type) {
 case 132:
  lua_pushnil(L);
  break;
 case 134:
  lua_pushboolean(L,cookie);
  break;
 case 131:
  if (cookie == TYPE_NUMBER_REAL) {
   lua_pushnumber(L,get_real(L,rb));
  } else {
   lua_pushinteger(L, get_integer(L, rb, cookie));
  }
  break;
 case 128:
  lua_pushlightuserdata(L,get_pointer(L,rb));
  break;
 case 130:
  get_buffer(L,rb,cookie);
  break;
 case 133: {
  if (cookie == 2) {
   uint16_t *plen = rb_read(rb, 2);
   if (plen == ((void*)0)) {
    invalid_stream(L,rb);
   }
   uint16_t n;
   memcpy(&n, plen, sizeof(n));
   get_buffer(L,rb,n);
  } else {
   if (cookie != 4) {
    invalid_stream(L,rb);
   }
   uint32_t *plen = rb_read(rb, 4);
   if (plen == ((void*)0)) {
    invalid_stream(L,rb);
   }
   uint32_t n;
   memcpy(&n, plen, sizeof(n));
   get_buffer(L,rb,n);
  }
  break;
 }
 case 129: {
  unpack_table(L,rb,cookie);
  break;
 }
 default: {
  invalid_stream(L,rb);
  break;
 }
 }
}
