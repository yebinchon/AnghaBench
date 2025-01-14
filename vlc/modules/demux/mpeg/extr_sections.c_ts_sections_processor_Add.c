
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {scalar_t__ i_extension_id; scalar_t__ i_table_id; scalar_t__ pf_callback; struct TYPE_8__* p_next; TYPE_4__* p_dvbpsi; void* p_callback_data; } ;
typedef TYPE_1__ ts_sections_processor_t ;
typedef scalar_t__ ts_section_processor_callback_t ;
typedef int demux_t ;
struct TYPE_9__ {int * p_sys; } ;


 int DVBPSI_MSG_DEBUG ;
 int dvbpsi_messages ;
 TYPE_4__* dvbpsi_new (int *,int ) ;
 TYPE_1__* malloc (int) ;
 int ts_dvbpsi_AttachRawDecoder (TYPE_4__*,int ,TYPE_1__*) ;
 int ts_sections_processor_ChainDelete (TYPE_1__*) ;
 int ts_subdecoder_rawsection_Callback ;

void ts_sections_processor_Add( demux_t *p_demux,
                                ts_sections_processor_t **pp_chain,
                                uint8_t i_table_id, uint16_t i_extension_id,
                                ts_section_processor_callback_t pf_callback,
                                void *p_callback_data )
{
    ts_sections_processor_t *p_proc = *pp_chain;
    for( ; p_proc; p_proc = p_proc->p_next )
    {

        if ( p_proc->i_extension_id == i_extension_id &&
             p_proc->i_table_id == i_table_id &&
             p_proc->pf_callback == pf_callback )
            return;
    }

    p_proc = malloc( sizeof(ts_sections_processor_t) );
    if( p_proc )
    {
        p_proc->pf_callback = pf_callback;
        p_proc->i_extension_id = i_extension_id;
        p_proc->i_table_id = i_table_id;
        p_proc->p_dvbpsi = dvbpsi_new( &dvbpsi_messages, DVBPSI_MSG_DEBUG );
        p_proc->p_dvbpsi->p_sys = p_demux;
        p_proc->p_callback_data = p_callback_data;

        if( !ts_dvbpsi_AttachRawDecoder( p_proc->p_dvbpsi,
                                         ts_subdecoder_rawsection_Callback, p_proc ) )
        {
            ts_sections_processor_ChainDelete( p_proc );
            return;
        }

        p_proc->p_next = *pp_chain;
        *pp_chain = p_proc;
    }
}
