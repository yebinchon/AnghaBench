
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_es; } ;
typedef TYPE_1__ ts_stream_t ;
typedef int ts_pmt_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; int const* p_program; } ;
typedef TYPE_2__ ts_es_t ;



ts_es_t * ts_stream_Extract_es( ts_stream_t *p_pes, const ts_pmt_t *p_pmt )
{
    ts_es_t **pp_prev = &p_pes->p_es;
    for( ts_es_t *p_es = p_pes->p_es; p_es; p_es = p_es->p_next )
    {
        if( p_es->p_program == p_pmt )
        {
            *pp_prev = p_es->p_next;
            p_es->p_next = ((void*)0);
            return p_es;
        }
        pp_prev = &p_es->p_next;
    }
    return ((void*)0);
}
