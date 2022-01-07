
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int type ;
struct read_block {int dummy; } ;
typedef int lua_State ;


 int invalid_stream (int *,struct read_block*) ;
 int push_value (int *,struct read_block*,int,int) ;
 int* rb_read (struct read_block*,int) ;

__attribute__((used)) static void
unpack_one(lua_State *L, struct read_block *rb) {
 uint8_t type;
 uint8_t *t = rb_read(rb, sizeof(type));
 if (t==((void*)0)) {
  invalid_stream(L, rb);
 }
 type = *t;
 push_value(L, rb, type & 0x7, type>>3);
}
