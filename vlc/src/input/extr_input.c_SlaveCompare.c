
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_priority; } ;
typedef TYPE_1__ input_item_slave_t ;



__attribute__((used)) static int SlaveCompare(const void *a, const void *b)
{
    const input_item_slave_t *p_slave0 = *((const input_item_slave_t **) a);
    const input_item_slave_t *p_slave1 = *((const input_item_slave_t **) b);

    if( p_slave0 == ((void*)0) || p_slave1 == ((void*)0) )
    {

        return p_slave0 == ((void*)0) ? 1 : p_slave1 == ((void*)0) ? -1 : 0;
    }

    if( p_slave0->i_priority > p_slave1->i_priority )
        return -1;

    if( p_slave0->i_priority < p_slave1->i_priority )
        return 1;

    return 0;
}
