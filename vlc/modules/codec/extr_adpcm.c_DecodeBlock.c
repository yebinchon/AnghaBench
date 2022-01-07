
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_18__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_19__ {scalar_t__ i_block; int codec; int i_samplesperblock; int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_20__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_buffer; scalar_t__ i_length; scalar_t__ p_buffer; } ;
typedef TYPE_3__ block_t ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int DecodeAdpcmDk3 (TYPE_1__*,int *,scalar_t__) ;
 int DecodeAdpcmDk4 (TYPE_1__*,int *,scalar_t__) ;
 int DecodeAdpcmEA (TYPE_1__*,int *,scalar_t__) ;
 int DecodeAdpcmImaQT (TYPE_1__*,int *,scalar_t__) ;
 int DecodeAdpcmImaWav (TYPE_1__*,int *,scalar_t__) ;
 int DecodeAdpcmMs (TYPE_1__*,int *,scalar_t__) ;
 int Flush (TYPE_1__*) ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_3__*) ;
 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int ) ;
 int date_Set (int *,scalar_t__) ;
 TYPE_3__* decoder_NewAudioBuffer (TYPE_1__*,int ) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_1__*) ;

__attribute__((used)) static block_t *DecodeBlock( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_block;

    if( !*pp_block ) return ((void*)0);

    p_block = *pp_block;

    if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED) )
    {
        Flush( p_dec );
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            goto drop;
    }

    if( p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != date_Get( &p_sys->end_date ) )
    {
        date_Set( &p_sys->end_date, p_block->i_pts );
    }
    else if( date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )

        goto drop;


    p_block->i_pts = VLC_TICK_INVALID;

    if( p_block->i_buffer >= p_sys->i_block )
    {
        block_t *p_out;

        if( decoder_UpdateAudioFormat( p_dec ) )
            goto drop;
        p_out = decoder_NewAudioBuffer( p_dec, p_sys->i_samplesperblock );
        if( p_out == ((void*)0) )
            goto drop;

        p_out->i_pts = date_Get( &p_sys->end_date );
        p_out->i_length = date_Increment( &p_sys->end_date,
                                     p_sys->i_samplesperblock ) - p_out->i_pts;

        switch( p_sys->codec )
        {
        case 130:
            DecodeAdpcmImaQT( p_dec, (int16_t*)p_out->p_buffer,
                              p_block->p_buffer );
            break;
        case 129:
            DecodeAdpcmImaWav( p_dec, (int16_t*)p_out->p_buffer,
                               p_block->p_buffer );
            break;
        case 128:
            DecodeAdpcmMs( p_dec, (int16_t*)p_out->p_buffer,
                           p_block->p_buffer );
            break;
        case 132:
            DecodeAdpcmDk4( p_dec, (int16_t*)p_out->p_buffer,
                            p_block->p_buffer );
            break;
        case 133:
            DecodeAdpcmDk3( p_dec, (int16_t*)p_out->p_buffer,
                            p_block->p_buffer );
            break;
        case 131:
            DecodeAdpcmEA( p_dec, (int16_t*)p_out->p_buffer,
                           p_block->p_buffer );
        default:
            break;
        }

        p_block->p_buffer += p_sys->i_block;
        p_block->i_buffer -= p_sys->i_block;
        return p_out;
    }

drop:
    block_Release( p_block );
    *pp_block = ((void*)0);
    return ((void*)0);
}
