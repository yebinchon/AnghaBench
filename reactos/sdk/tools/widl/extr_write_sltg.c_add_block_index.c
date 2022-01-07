
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_typelib {int n_file_blocks; struct sltg_block* blocks; } ;
struct sltg_block {int length; int index_string; struct sltg_block* next; void* data; } ;


 struct sltg_block* xmalloc (int) ;

__attribute__((used)) static void add_block_index(struct sltg_typelib *sltg, void *data, int size, int index)
{
    struct sltg_block *block = xmalloc(sizeof(*block));

    block->length = size;
    block->data = data;
    block->index_string = index;
    block->next = ((void*)0);

    if (sltg->blocks)
    {
        struct sltg_block *blocks = sltg->blocks;

        while (blocks->next)
            blocks = blocks->next;

        blocks->next = block;
    }
    else
        sltg->blocks = block;

    sltg->n_file_blocks++;
}
