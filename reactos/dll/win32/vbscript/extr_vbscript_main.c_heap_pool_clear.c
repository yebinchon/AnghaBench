
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_4__ {size_t block_cnt; int mark; scalar_t__ offset; scalar_t__ last_block; int * blocks; int custom_blocks; } ;
typedef TYPE_1__ heap_pool_t ;
typedef size_t DWORD ;


 int ARENA_FREE_FILLER ;
 int FALSE ;
 scalar_t__ WARN_ON (TYPE_1__*) ;
 int block_size (size_t) ;
 int heap_free (struct list*) ;
 struct list* list_next (int *,int *) ;
 int list_remove (struct list*) ;
 int memset (int ,int ,int ) ;

void heap_pool_clear(heap_pool_t *heap)
{
    struct list *tmp;

    if(!heap)
        return;

    while((tmp = list_next(&heap->custom_blocks, &heap->custom_blocks))) {
        list_remove(tmp);
        heap_free(tmp);
    }

    if(WARN_ON(heap)) {
        DWORD i;

        for(i=0; i < heap->block_cnt; i++)
            memset(heap->blocks[i], ARENA_FREE_FILLER, block_size(i));
    }

    heap->last_block = heap->offset = 0;
    heap->mark = FALSE;
}
