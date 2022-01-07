
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bson {int size; int * ptr; } ;


 int bson_reserve (struct bson*,int) ;

__attribute__((used)) static inline void
write_byte(struct bson *b, uint8_t v) {
 bson_reserve(b,1);
 b->ptr[b->size++] = v;
}
