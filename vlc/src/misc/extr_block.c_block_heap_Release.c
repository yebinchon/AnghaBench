
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_start; } ;
typedef TYPE_1__ block_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void block_heap_Release (block_t *block)
{
    free (block->p_start);
    free (block);
}
