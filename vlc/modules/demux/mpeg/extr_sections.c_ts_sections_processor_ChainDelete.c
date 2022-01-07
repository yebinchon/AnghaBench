
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; int p_dvbpsi; } ;
typedef TYPE_1__ ts_sections_processor_t ;


 int dvbpsi_delete (int ) ;
 int free (TYPE_1__*) ;
 int ts_dvbpsi_DetachRawDecoder (int ) ;

void ts_sections_processor_ChainDelete( ts_sections_processor_t *p_chain )
{
    while( p_chain )
    {
        ts_dvbpsi_DetachRawDecoder( p_chain->p_dvbpsi );
        dvbpsi_delete( p_chain->p_dvbpsi );
        ts_sections_processor_t *p_next = p_chain->p_next;
        free( p_chain );
        p_chain = p_next;
    }
}
