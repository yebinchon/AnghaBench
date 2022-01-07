
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int buffer; int ptr; int cap; scalar_t__ size; } ;


 int DEFAULT_CAP ;

__attribute__((used)) static inline void
buffer_create(struct buffer *b) {
 b->size = 0;
 b->cap = DEFAULT_CAP;
 b->ptr = b->buffer;
}
