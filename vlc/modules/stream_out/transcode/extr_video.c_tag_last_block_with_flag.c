
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_flags; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ block_t ;



__attribute__((used)) static void tag_last_block_with_flag( block_t **out, int i_flag )
{
    block_t *p_last = *out;
    if( p_last )
    {
        while( p_last->p_next )
            p_last = p_last->p_next;
        p_last->i_flags |= i_flag;
    }
}
