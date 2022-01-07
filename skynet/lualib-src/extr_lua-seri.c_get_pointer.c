
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int userdata ;
struct read_block {int dummy; } ;
typedef int lua_State ;


 int invalid_stream (int *,struct read_block*) ;
 int memcpy (void**,void**,int) ;
 scalar_t__ rb_read (struct read_block*,int) ;

__attribute__((used)) static void *
get_pointer(lua_State *L, struct read_block *rb) {
 void * userdata = 0;
 void ** v = (void **)rb_read(rb,sizeof(userdata));
 if (v == ((void*)0)) {
  invalid_stream(L,rb);
 }
 memcpy(&userdata, v, sizeof(userdata));
 return userdata;
}
