
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int fifo; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int block_t ;


 int * block_Duplicate (int *) ;
 int block_FifoPut (int ,int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static block_t *DoWork(filter_t *p_filter, block_t *p_in_buf)
{
    block_t *block = block_Duplicate(p_in_buf);
    filter_sys_t *p_sys = p_filter->p_sys;
    if (likely(block != ((void*)0)))
        block_FifoPut(p_sys->fifo, block);
    return p_in_buf;
}
