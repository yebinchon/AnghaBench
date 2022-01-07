
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bson {int* ptr; int size; } ;
typedef int int64_t ;


 int bson_reserve (struct bson*,int) ;

__attribute__((used)) static inline void
write_int64(struct bson *b, int64_t v) {
 uint64_t uv = (uint64_t)v;
 int i;
 bson_reserve(b,8);
 for (i=0;i<64;i+=8) {
  b->ptr[b->size++] = (uv>>i) & 0xff;
 }
}
