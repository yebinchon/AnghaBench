
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int p_dvbpsi; struct TYPE_3__* p_next; } ;
typedef TYPE_1__ ts_sections_processor_t ;


 int dvbpsi_packet_push (int ,int *) ;

void ts_sections_processor_Push( ts_sections_processor_t *p_chain,
                                 const uint8_t *p_buf )
{
    for( ts_sections_processor_t *p_proc = p_chain;
         p_proc; p_proc = p_proc->p_next )
    {
        dvbpsi_packet_push( p_chain->p_dvbpsi, (uint8_t *) p_buf );
    }
}
