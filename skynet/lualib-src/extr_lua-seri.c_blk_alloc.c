
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int * next; } ;


 struct block* skynet_malloc (int) ;

__attribute__((used)) inline static struct block *
blk_alloc(void) {
 struct block *b = skynet_malloc(sizeof(struct block));
 b->next = ((void*)0);
 return b;
}
