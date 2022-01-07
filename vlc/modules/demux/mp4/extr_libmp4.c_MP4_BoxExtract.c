
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ i_type; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ MP4_Box_t ;



MP4_Box_t * MP4_BoxExtract( MP4_Box_t **pp_chain, uint32_t i_type )
{
    MP4_Box_t *p_box = *pp_chain;
    while( p_box )
    {
        if( p_box->i_type == i_type )
        {
            *pp_chain = p_box->p_next;
            p_box->p_next = ((void*)0);
            return p_box;
        }
        pp_chain = &p_box->p_next;
        p_box = p_box->p_next;
    }
    return ((void*)0);
}
