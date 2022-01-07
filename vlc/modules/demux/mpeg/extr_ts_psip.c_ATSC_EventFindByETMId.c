
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {int i_size; TYPE_3__** p_elems; } ;
struct TYPE_8__ {TYPE_1__ eits; } ;
typedef TYPE_2__ ts_psip_context_t ;
struct TYPE_9__ {scalar_t__ i_version; scalar_t__ i_source_id; TYPE_4__* p_first_event; } ;
typedef TYPE_3__ dvbpsi_atsc_eit_t ;
struct TYPE_10__ {scalar_t__ i_event_id; struct TYPE_10__* p_next; } ;
typedef TYPE_4__ dvbpsi_atsc_eit_event_t ;


 int fromETMId (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static const dvbpsi_atsc_eit_event_t * ATSC_EventFindByETMId( ts_psip_context_t *p_eitctx,
                                                              uint32_t i_etm_id, uint8_t i_version )
{
    uint16_t i_vchannel_id, i_event_id;
    fromETMId( i_etm_id, &i_vchannel_id, &i_event_id );

    for( int i=0; i<p_eitctx->eits.i_size; i++ )
    {
        dvbpsi_atsc_eit_t *p_eit = p_eitctx->eits.p_elems[i];
        if( p_eit->i_version != i_version || p_eit->i_source_id != i_vchannel_id )
            continue;

        for( const dvbpsi_atsc_eit_event_t *p_evt = p_eit->p_first_event;
                                            p_evt ; p_evt = p_evt->p_next )
        {
            if( p_evt->i_event_id == i_event_id )
                return p_evt;
        }
    }
    return ((void*)0);
}
