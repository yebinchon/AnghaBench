
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int ogg_packet ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_12__ {int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_13__ {int i_flags; scalar_t__ i_pts; int i_nb_samples; int i_length; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_END_OF_SEQUENCE ;
 TYPE_3__* DecodePacket (TYPE_1__*,int *,int ,int ) ;
 int Flush (TYPE_1__*) ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_3__*) ;
 scalar_t__ date_Get (int *) ;
 int date_Set (int *,scalar_t__) ;

__attribute__((used)) static block_t *ProcessPacket( decoder_t *p_dec, ogg_packet *p_oggpacket,
                               block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY) )
    {
        Flush( p_dec );
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            block_Release( p_block );
            return ((void*)0);
        }
    }


    if( p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != date_Get( &p_sys->end_date ) )
    {
        date_Set( &p_sys->end_date, p_block->i_pts );
    }

    if( date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )
    {

        block_Release( p_block );
        return ((void*)0);
    }


    vlc_tick_t i_max_duration = (p_block->i_flags & BLOCK_FLAG_END_OF_SEQUENCE) ?
                             p_block->i_length : 0;

    block_t *p_aout_buffer = DecodePacket( p_dec, p_oggpacket,
                                           p_block->i_nb_samples,
                                           i_max_duration );

    block_Release( p_block );
    return p_aout_buffer;
}
