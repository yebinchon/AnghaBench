
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; } ;


 int buffer_reserve (struct buffer*,int) ;

__attribute__((used)) static inline int
reserve_length(struct buffer *b) {
 int sz = b->size;
 buffer_reserve(b,4);
 b->size +=4;
 return sz;
}
