
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bson_reader {int* ptr; int size; } ;
typedef int lua_State ;


 int check_reader (int *,struct bson_reader*,int) ;

__attribute__((used)) static inline int
read_byte(lua_State *L, struct bson_reader *br) {
 check_reader(L, br, 1);
 const uint8_t * b = br->ptr;
 int r = b[0];
 ++br->ptr;
 --br->size;

 return r;
}
