
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_11__ {int i_height; int i_width; scalar_t__ i_incr; int i_next_date; TYPE_9__* p_audios; scalar_t__ i_telx_count; scalar_t__ p_y; scalar_t__ b_vbi; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int * p_es; scalar_t__ i_group; } ;


 scalar_t__ DecodeAudio (TYPE_1__*,TYPE_9__*) ;
 scalar_t__ DecodeTelx (TYPE_1__*) ;
 int DecodeVideo (TYPE_1__*) ;
 int DecodeWSS (TYPE_1__*) ;
 int MAX_AUDIOS ;
 scalar_t__ NewFrame (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_SUCCESS ;
 int es_out_SetPCR (int ,int ) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static int DecodeFrame( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( p_sys->b_vbi )
    {
        DecodeWSS( p_demux );

        if ( p_sys->i_height == 576 )
        {


            memset( p_sys->p_y, 0, p_sys->i_width / 2 );
            memset( p_sys->p_y + p_sys->i_width * 574 + p_sys->i_width / 2,
                        0, p_sys->i_width * 3 / 2 );
        }
    }

    if ( p_sys->i_telx_count )
        if ( DecodeTelx( p_demux ) != VLC_SUCCESS )
            return VLC_ENOMEM;

    for ( int i = 0; i < MAX_AUDIOS; i++ )
    {
        if ( p_sys->p_audios[i].i_group && p_sys->p_audios[i].p_es != ((void*)0) )
            if( DecodeAudio( p_demux, &p_sys->p_audios[i] ) != VLC_SUCCESS )
                return VLC_EGENERIC;
    }

    DecodeVideo( p_demux );

    es_out_SetPCR( p_demux->out, p_sys->i_next_date );
    p_sys->i_next_date += p_sys->i_incr;

    if( NewFrame( p_demux ) != VLC_SUCCESS )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
