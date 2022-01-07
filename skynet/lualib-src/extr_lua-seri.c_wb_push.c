
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct write_block {int ptr; int len; TYPE_1__* current; } ;
struct TYPE_2__ {scalar_t__ buffer; struct TYPE_2__* next; } ;


 int BLOCK_SIZE ;
 TYPE_1__* blk_alloc () ;
 int memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) inline static void
wb_push(struct write_block *b, const void *buf, int sz) {
 const char * buffer = buf;
 if (b->ptr == BLOCK_SIZE) {
_again:
  b->current = b->current->next = blk_alloc();
  b->ptr = 0;
 }
 if (b->ptr <= BLOCK_SIZE - sz) {
  memcpy(b->current->buffer + b->ptr, buffer, sz);
  b->ptr+=sz;
  b->len+=sz;
 } else {
  int copy = BLOCK_SIZE - b->ptr;
  memcpy(b->current->buffer + b->ptr, buffer, copy);
  buffer += copy;
  b->len += copy;
  sz -= copy;
  goto _again;
 }
}
