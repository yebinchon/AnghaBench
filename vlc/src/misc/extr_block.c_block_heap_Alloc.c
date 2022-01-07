
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_t ;


 int * block_Init (int *,int *,void*,size_t) ;
 int block_heap_cbs ;
 int free (void*) ;
 int * malloc (int) ;

block_t *block_heap_Alloc (void *addr, size_t length)
{
    block_t *block = malloc (sizeof (*block));
    if (block == ((void*)0))
    {
        free (addr);
        return ((void*)0);
    }

    return block_Init(block, &block_heap_cbs, addr, length);
}
