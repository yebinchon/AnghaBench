
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int size; int cap; scalar_t__ ptr; scalar_t__ buffer; } ;


 int memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ skynet_malloc (int) ;
 scalar_t__ skynet_realloc (scalar_t__,int) ;

__attribute__((used)) static inline void
buffer_reserve(struct buffer *b, int sz) {
 if (b->size + sz <= b->cap)
  return;
 do {
  b->cap *= 2;
 } while (b->cap <= b->size + sz);

 if (b->ptr == b->buffer) {
  b->ptr = skynet_malloc(b->cap);
  memcpy(b->ptr, b->buffer, b->size);
 } else {
  b->ptr = skynet_realloc(b->ptr, b->cap);
 }
}
