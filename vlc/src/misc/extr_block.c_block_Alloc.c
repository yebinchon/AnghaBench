
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t i_buffer; void* p_buffer; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_ALIGN ;
 int BLOCK_PADDING ;
 int ENOBUFS ;
 int block_Init (TYPE_1__*,int *,TYPE_1__*,size_t const) ;
 int block_generic_cbs ;
 int errno ;
 TYPE_1__* malloc (size_t const) ;
 int static_assert (int,char*) ;
 scalar_t__ unlikely (int) ;

block_t *block_Alloc (size_t size)
{
    if (unlikely(size >> 27))
    {
        errno = ENOBUFS;
        return ((void*)0);
    }


    const size_t alloc = sizeof (block_t) + BLOCK_ALIGN + (2 * BLOCK_PADDING)
                       + size;
    if (unlikely(alloc <= size))
        return ((void*)0);

    block_t *b = malloc (alloc);
    if (unlikely(b == ((void*)0)))
        return ((void*)0);

    block_Init(b, &block_generic_cbs, b + 1, alloc - sizeof (*b));
    static_assert ((BLOCK_PADDING % BLOCK_ALIGN) == 0,
                   "BLOCK_PADDING must be a multiple of BLOCK_ALIGN");
    b->p_buffer += BLOCK_PADDING + BLOCK_ALIGN - 1;
    b->p_buffer = (void *)(((uintptr_t)b->p_buffer) & ~(BLOCK_ALIGN - 1));
    b->i_buffer = size;
    return b;
}
