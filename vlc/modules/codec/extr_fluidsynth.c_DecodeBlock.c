
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_15__ {int synth; int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_16__ {int i_flags; scalar_t__ i_pts; int i_buffer; int* p_buffer; int i_length; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int Flush (TYPE_1__*) ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_3__*) ;
 int date_Get (int *) ;
 int date_Increment (int *,unsigned int) ;
 int date_Set (int *,scalar_t__) ;
 TYPE_3__* decoder_NewAudioBuffer (TYPE_1__*,unsigned int) ;
 int decoder_QueueAudio (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_1__*) ;
 int fluid_synth_cc (int ,int,int,int) ;
 int fluid_synth_channel_pressure (int ,int,int) ;
 int fluid_synth_noteoff (int ,int,int) ;
 int fluid_synth_noteon (int ,int,int,int) ;
 int fluid_synth_pitch_bend (int ,int,int) ;
 int fluid_synth_program_change (int ,int,int) ;
 int fluid_synth_sysex (int ,char*,int,int *,int *,int *,int ) ;
 int fluid_synth_system_reset (int ) ;
 int fluid_synth_write_float (int ,unsigned int,int*,int ,int,int*,int,int) ;
 int msg_Warn (TYPE_1__*,char*) ;

__attribute__((used)) static int DecodeBlock (decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_out = ((void*)0);

    if (p_block == ((void*)0))
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED))
    {
        Flush (p_dec);
        if (p_block->i_flags & BLOCK_FLAG_CORRUPTED)
        {
            block_Release(p_block);
            return VLCDEC_SUCCESS;
        }
    }

    if (p_block->i_pts != VLC_TICK_INVALID
     && date_Get(&p_sys->end_date) == VLC_TICK_INVALID)
        date_Set (&p_sys->end_date, p_block->i_pts);
    else
    if (p_block->i_pts < date_Get (&p_sys->end_date))
    {
        msg_Warn (p_dec, "MIDI message in the past?");
        goto drop;
    }

    if (p_block->i_buffer < 1)
        goto drop;

    uint8_t event = p_block->p_buffer[0];
    uint8_t channel = p_block->p_buffer[0] & 0xf;
    event &= 0xF0;

    if (event == 0xF0)
        switch (channel)
        {
            case 0:
                if (p_block->p_buffer[p_block->i_buffer - 1] != 0xF7)
                {
            case 7:
                    msg_Warn (p_dec, "fragmented SysEx not implemented");
                    goto drop;
                }
                fluid_synth_sysex (p_sys->synth, (char *)p_block->p_buffer + 1,
                                   p_block->i_buffer - 2, ((void*)0), ((void*)0), ((void*)0), 0);
                break;
            case 0xF:
                fluid_synth_system_reset (p_sys->synth);
                break;
        }

    uint8_t p1 = (p_block->i_buffer > 1) ? (p_block->p_buffer[1] & 0x7f) : 0;
    uint8_t p2 = (p_block->i_buffer > 2) ? (p_block->p_buffer[2] & 0x7f) : 0;

    switch (event & 0xF0)
    {
        case 0x80:
            fluid_synth_noteoff (p_sys->synth, channel, p1);
            break;
        case 0x90:
            fluid_synth_noteon (p_sys->synth, channel, p1, p2);
            break;

        case 0xB0:
            fluid_synth_cc (p_sys->synth, channel, p1, p2);
            break;
        case 0xC0:
            fluid_synth_program_change (p_sys->synth, channel, p1);
            break;
        case 0xD0:
            fluid_synth_channel_pressure (p_sys->synth, channel, p1);
            break;
        case 0xE0:
            fluid_synth_pitch_bend (p_sys->synth, channel, (p2 << 7) | p1);
            break;
    }

    unsigned samples =
        (p_block->i_pts - date_Get (&p_sys->end_date)) * 441 / 10000;
    if (samples == 0)
        goto drop;

    if (decoder_UpdateAudioFormat (p_dec))
        goto drop;
    p_out = decoder_NewAudioBuffer (p_dec, samples);
    if (p_out == ((void*)0))
        goto drop;

    p_out->i_pts = date_Get (&p_sys->end_date );
    p_out->i_length = date_Increment (&p_sys->end_date, samples)
                      - p_out->i_pts;
    fluid_synth_write_float (p_sys->synth, samples, p_out->p_buffer, 0, 2,
                             p_out->p_buffer, 1, 2);
drop:
    block_Release (p_block);
    if (p_out != ((void*)0))
        decoder_QueueAudio (p_dec, p_out);
    return VLCDEC_SUCCESS;
}
