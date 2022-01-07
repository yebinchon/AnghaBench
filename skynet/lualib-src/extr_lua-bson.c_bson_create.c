
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int buffer; int ptr; int cap; scalar_t__ size; } ;


 int DEFAULT_CAP ;

__attribute__((used)) static inline void
bson_create(struct bson *b) {
 b->size = 0;
 b->cap = DEFAULT_CAP;
 b->ptr = b->buffer;
}
