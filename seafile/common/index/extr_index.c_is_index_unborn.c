
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec; } ;
struct index_state {TYPE_1__ timestamp; int alloc; int cache_nr; } ;



int is_index_unborn(struct index_state *istate)
{
    return (!istate->cache_nr && !istate->alloc && !istate->timestamp.sec);
}
