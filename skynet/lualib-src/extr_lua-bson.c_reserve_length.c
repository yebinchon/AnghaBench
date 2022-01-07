
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int size; } ;


 int bson_reserve (struct bson*,int) ;

__attribute__((used)) static inline int
reserve_length(struct bson *b) {
 int sz = b->size;
 bson_reserve(b,4);
 b->size +=4;
 return sz;
}
