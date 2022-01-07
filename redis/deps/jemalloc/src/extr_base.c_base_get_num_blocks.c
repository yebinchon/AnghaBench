
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* blocks; } ;
typedef TYPE_1__ base_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_2__ base_block_t ;


 int assert (int ) ;

__attribute__((used)) static size_t
base_get_num_blocks(base_t *base, bool with_new_block) {
 base_block_t *b = base->blocks;
 assert(b != ((void*)0));

 size_t n_blocks = with_new_block ? 2 : 1;
 while (b->next != ((void*)0)) {
  n_blocks++;
  b = b->next;
 }

 return n_blocks;
}
