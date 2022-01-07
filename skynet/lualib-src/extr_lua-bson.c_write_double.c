
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bson {int* ptr; int size; } ;
typedef int lua_Number ;


 int bson_reserve (struct bson*,int) ;

__attribute__((used)) static inline void
write_double(struct bson *b, lua_Number d) {
 union {
  double d;
  uint64_t i;
 } v;
 v.d = d;
 int i;
 bson_reserve(b,8);
 for (i=0;i<64;i+=8) {
  b->ptr[b->size++] = (v.i>>i) & 0xff;
 }
}
