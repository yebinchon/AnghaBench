
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; TYPE_1__* p_dvbpsi; } ;
typedef TYPE_2__ ts_sections_processor_t ;
struct TYPE_4__ {int p_decoder; } ;


 int dvbpsi_decoder_reset (int ,int) ;

void ts_sections_processor_Reset( ts_sections_processor_t *p_chain )
{
    while( p_chain )
    {
        dvbpsi_decoder_reset( p_chain->p_dvbpsi->p_decoder, 1 );
        p_chain = p_chain->p_next;
    }
}
