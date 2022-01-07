
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bson_reader {int member_1; int const* member_0; } ;
typedef int lua_State ;
typedef int int32_t ;


 int get_length (int const*) ;
 int * lua_touserdata (int *,int) ;
 int unpack_dict (int *,struct bson_reader*,int) ;

__attribute__((used)) static int
ldecode(lua_State *L) {
 const int32_t * data = lua_touserdata(L,1);
 if (data == ((void*)0)) {
  return 0;
 }
 const uint8_t * b = (const uint8_t *)data;
 int32_t len = get_length(b);
 struct bson_reader br = { b , len };

 unpack_dict(L, &br, 0);

 return 1;
}
