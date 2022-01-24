#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_15__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_2__ ogg_packet ;
struct TYPE_16__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_14__ {int channels; int gain; } ;
struct TYPE_17__ {int /*<<< orphan*/  end_date; TYPE_1__ header; int /*<<< orphan*/  p_st; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_18__ {int i_buffer; int i_nb_samples; scalar_t__ i_pts; scalar_t__ i_length; scalar_t__ p_buffer; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 float FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (int,int) ; 

__attribute__((used)) static block_t *FUNC14( decoder_t *p_dec, ogg_packet *p_oggpacket,
                              int i_nb_samples, vlc_tick_t i_duration )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( !p_oggpacket->bytes )
        return NULL;

    int spp;
    spp=FUNC9(p_oggpacket->packet,p_oggpacket->bytes);
    if(spp>0)spp*=FUNC10(p_oggpacket->packet,48000);
    if(spp<120||spp>120*48)return NULL;

    /* Since the information isn't always available at the demux level
     * use the packet's sample number */
    if(!i_nb_samples)
        i_nb_samples = spp;

    if( FUNC5( p_dec ) )
        return NULL;
    block_t *p_aout_buffer=FUNC4( p_dec, spp );
    if ( !p_aout_buffer )
    {
        FUNC7(p_dec, "Oops: No new buffer was returned!");
        return NULL;
    }

    spp=FUNC8(p_sys->p_st, p_oggpacket->packet,
         p_oggpacket->bytes, (float *)p_aout_buffer->p_buffer, spp, 0);

    int i_end_trim = 0;
    if( i_duration > 0 && spp > 0 &&
        i_duration < FUNC13(i_nb_samples, 48000) )
    {
        i_end_trim = spp - FUNC0(FUNC12(i_duration, 48000), 0, spp);
    }

    if( spp < 0 || i_nb_samples <= 0 || i_end_trim >= i_nb_samples)
    {
        FUNC1(p_aout_buffer);
        if( spp < 0 )
            FUNC7( p_dec, "Error: corrupted stream?" );
        return NULL;
    }

    p_aout_buffer->i_buffer = (i_nb_samples - i_end_trim) *
                              p_sys->header.channels * sizeof(float);

    if( spp > i_nb_samples )
    {
        FUNC6(p_aout_buffer->p_buffer,
            p_aout_buffer->p_buffer
            + (spp - i_nb_samples)*p_sys->header.channels*sizeof(float),
            p_aout_buffer->i_buffer);
    }
    i_nb_samples -= i_end_trim;

#ifndef OPUS_SET_GAIN
    if(p_sys->header.gain!=0)
    {
        float gain = FUNC11(10., p_sys->header.gain/5120.);
        float *buf =(float *)p_aout_buffer->p_buffer;
        for( int i = 0; i < i_nb_samples*p_sys->header.channels; i++)
            buf[i] *= gain;
    }
#endif
    p_aout_buffer->i_nb_samples = i_nb_samples;
    p_aout_buffer->i_pts = FUNC2( &p_sys->end_date );
    p_aout_buffer->i_length = FUNC3( &p_sys->end_date, i_nb_samples )
        - p_aout_buffer->i_pts;
    return p_aout_buffer;
}