
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct bson_reader {int* ptr; int size; } ;
typedef int lua_State ;
typedef double lua_Number ;


 int check_reader (int *,struct bson_reader*,int) ;

__attribute__((used)) static inline lua_Number
read_double(lua_State *L, struct bson_reader *br) {
 check_reader(L, br, 8);
 union {
  uint64_t i;
  double d;
 } v;
 const uint8_t * b = br->ptr;
 uint32_t lo = b[0] | b[1]<<8 | b[2]<<16 | b[3]<<24;
 uint32_t hi = b[4] | b[5]<<8 | b[6]<<16 | b[7]<<24;
 v.i = (uint64_t)lo | (uint64_t)hi<<32;
 br->ptr+=8;
 br->size-=8;
 return v.d;
}
