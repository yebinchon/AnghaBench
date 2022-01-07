
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_block {scalar_t__ ptr; struct block* head; struct block* current; scalar_t__ len; } ;
struct block {int * next; } ;


 int assert (int ) ;

__attribute__((used)) static void
wb_init(struct write_block *wb , struct block *b) {
 wb->head = b;
 assert(b->next == ((void*)0));
 wb->len = 0;
 wb->current = wb->head;
 wb->ptr = 0;
}
