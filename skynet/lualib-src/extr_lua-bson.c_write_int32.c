
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bson {int* ptr; int size; } ;
typedef int int32_t ;


 int bson_reserve (struct bson*,int) ;

__attribute__((used)) static inline void
write_int32(struct bson *b, int32_t v) {
 uint32_t uv = (uint32_t)v;
 bson_reserve(b,4);
 b->ptr[b->size++] = uv & 0xff;
 b->ptr[b->size++] = (uv >> 8)&0xff;
 b->ptr[b->size++] = (uv >> 16)&0xff;
 b->ptr[b->size++] = (uv >> 24)&0xff;
}
