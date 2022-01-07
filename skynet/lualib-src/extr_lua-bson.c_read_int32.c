
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bson_reader {int* ptr; int size; } ;
typedef int lua_State ;
typedef int int32_t ;


 int check_reader (int *,struct bson_reader*,int) ;

__attribute__((used)) static inline int32_t
read_int32(lua_State *L, struct bson_reader *br) {
 check_reader(L, br, 4);
 const uint8_t * b = br->ptr;
 uint32_t v = b[0] | b[1]<<8 | b[2]<<16 | b[3]<<24;
 br->ptr+=4;
 br->size-=4;
 return (int32_t)v;
}
