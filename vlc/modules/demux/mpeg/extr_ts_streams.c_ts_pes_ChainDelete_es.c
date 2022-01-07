
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_extraes; struct TYPE_5__* p_next; } ;
typedef TYPE_1__ ts_es_t ;
typedef int demux_t ;


 int free (TYPE_1__*) ;
 int ts_pes_es_Clean (int *,TYPE_1__*) ;

__attribute__((used)) static void ts_pes_ChainDelete_es( demux_t *p_demux, ts_es_t *p_es )
{
    while( p_es )
    {
        ts_es_t *p_next = p_es->p_next;
        ts_pes_ChainDelete_es( p_demux, p_es->p_extraes );
        ts_pes_es_Clean( p_demux, p_es );
        free( p_es );
        p_es = p_next;
    }
}
