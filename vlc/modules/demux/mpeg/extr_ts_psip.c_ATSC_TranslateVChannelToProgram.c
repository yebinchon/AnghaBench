
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {TYPE_2__* p_first_channel; } ;
typedef TYPE_1__ dvbpsi_atsc_vct_t ;
struct TYPE_5__ {scalar_t__ i_source_id; scalar_t__ i_program_number; struct TYPE_5__* p_next; } ;
typedef TYPE_2__ dvbpsi_atsc_vct_channel_t ;



__attribute__((used)) static bool ATSC_TranslateVChannelToProgram( const dvbpsi_atsc_vct_t *p_vct,
                                             uint16_t i_channel, uint16_t *pi_program )
{
    for( const dvbpsi_atsc_vct_channel_t *p_channel = p_vct->p_first_channel;
                                          p_channel; p_channel = p_channel->p_next )
    {
        if( p_channel->i_source_id == i_channel )
        {
            *pi_program = p_channel->i_program_number;
            return 1;
        }
    }
    return 0;
}
