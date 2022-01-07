
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_block {int dummy; } ;
typedef int lua_State ;


 int invalid_stream (int *,struct read_block*) ;
 int lua_pushlstring (int *,char*,int) ;
 char* rb_read (struct read_block*,int) ;

__attribute__((used)) static void
get_buffer(lua_State *L, struct read_block *rb, int len) {
 char * p = rb_read(rb,len);
 if (p == ((void*)0)) {
  invalid_stream(L,rb);
 }
 lua_pushlstring(L,p,len);
}
