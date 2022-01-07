
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cbs; int * p_next; } ;
typedef TYPE_2__ block_t ;
struct TYPE_6__ {int (* free ) (TYPE_2__*) ;} ;


 int block_Check (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void block_Release(block_t *block)
{

    block->p_next = ((void*)0);
    block_Check (block);

    block->cbs->free(block);
}
