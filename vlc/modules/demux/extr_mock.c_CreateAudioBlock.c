
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_6__ {int const i_frame_length; int const i_bytes_per_frame; int i_rate; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct mock_track {TYPE_2__ fmt; } ;
typedef int int64_t ;
typedef int demux_t ;
struct TYPE_8__ {int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* block_Alloc (int const) ;
 int memset (int ,int ,int ) ;
 int samples_from_vlc_tick (int ,int ) ;

__attribute__((used)) static block_t *
CreateAudioBlock(demux_t *demux, struct mock_track *track, vlc_tick_t length)
{
    const int64_t samples =
        samples_from_vlc_tick(length, track->fmt.audio.i_rate);
    const int64_t bytes = samples / track->fmt.audio.i_frame_length
                        * track->fmt.audio.i_bytes_per_frame;
    block_t *b = block_Alloc(bytes);
    if (!b)
        return ((void*)0);
    memset(b->p_buffer, 0, b->i_buffer);
    return b;
    (void) demux;
}
