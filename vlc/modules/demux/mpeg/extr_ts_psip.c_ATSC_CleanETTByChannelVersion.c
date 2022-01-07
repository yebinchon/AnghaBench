
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int i_size; TYPE_2__** p_elems; } ;
struct TYPE_6__ {TYPE_5__ etts; } ;
typedef TYPE_1__ ts_psip_context_t ;
struct TYPE_7__ {int i_etm_id; scalar_t__ i_version; } ;
typedef TYPE_2__ dvbpsi_atsc_ett_t ;


 int ARRAY_REMOVE (TYPE_5__,int) ;
 int dvbpsi_atsc_DeleteETT (TYPE_2__*) ;

__attribute__((used)) static void ATSC_CleanETTByChannelVersion( ts_psip_context_t *p_ctx, uint16_t i_channel, uint8_t i_version )
{
    int i=0;
    while( i<p_ctx->etts.i_size )
    {
        dvbpsi_atsc_ett_t *p = p_ctx->etts.p_elems[i];
        uint16_t i_curchan = p->i_etm_id >> 16;
        if( i_channel < i_curchan )
            break;
        if( i_curchan == i_channel && p->i_version != i_version )
        {
            dvbpsi_atsc_DeleteETT( p );
            ARRAY_REMOVE( p_ctx->etts, i );
        }
        else i++;
    }
}
