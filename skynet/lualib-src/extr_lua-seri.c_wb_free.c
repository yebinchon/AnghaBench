
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_block {scalar_t__ len; scalar_t__ ptr; int * current; struct block* head; } ;
struct block {struct block* next; } ;


 int skynet_free (struct block*) ;

__attribute__((used)) static void
wb_free(struct write_block *wb) {
 struct block *blk = wb->head;
 blk = blk->next;
 while (blk) {
  struct block * next = blk->next;
  skynet_free(blk);
  blk = next;
 }
 wb->head = ((void*)0);
 wb->current = ((void*)0);
 wb->ptr = 0;
 wb->len = 0;
}
