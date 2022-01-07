
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sltg_data {int size; int allocated; scalar_t__ data; } ;


 int max (int,int) ;
 int memcpy (scalar_t__,void const*,int) ;
 scalar_t__ xrealloc (scalar_t__,int) ;

__attribute__((used)) static void append_data(struct sltg_data *block, const void *data, int size)
{
    int new_size = block->size + size;

    if (new_size > block->allocated)
    {
        block->allocated = max(block->allocated * 2, new_size);
        block->data = xrealloc(block->data, block->allocated);
    }

    memcpy(block->data + block->size, data, size);
    block->size = new_size;
}
