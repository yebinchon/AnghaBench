
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_block {int len; int ptr; void* buffer; } ;



__attribute__((used)) static void *
rb_read(struct read_block *rb, int sz) {
 if (rb->len < sz) {
  return ((void*)0);
 }

 int ptr = rb->ptr;
 rb->ptr += sz;
 rb->len -= sz;
 return rb->buffer + ptr;
}
