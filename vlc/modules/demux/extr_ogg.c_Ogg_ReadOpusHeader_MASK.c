#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_8__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_2__ ogg_packet ;
struct TYPE_10__ {int i_rate; void* i_channels; } ;
struct TYPE_7__ {TYPE_4__ audio; scalar_t__ i_bitrate; } ;
struct TYPE_9__ {int b_force_backup; void* i_pre_skip; TYPE_1__ fmt; int /*<<< orphan*/  dts; } ;
typedef  TYPE_3__ logical_stream_t ;

/* Variables and functions */
 void* FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( logical_stream_t *p_stream,
                                ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;

    /* Signal that we want to keep a backup of the opus
     * stream headers. They will be used when switching between
     * audio streams. */
    p_stream->b_force_backup = true;

    /* All OggOpus streams are timestamped at 48kHz and
     * can be played at 48kHz. */
    p_stream->fmt.audio.i_rate = 48000;
    FUNC1( &p_stream->dts, p_stream->fmt.audio.i_rate, 1 );
    p_stream->fmt.i_bitrate = 0;

    /* Cheat and get additional info ;) */
    FUNC5( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    FUNC3( &opb, 64 );
    FUNC3( &opb, 8 ); /* version_id */
    p_stream->fmt.audio.i_channels = FUNC4( &opb, 8 );
    FUNC2(&p_stream->fmt.audio);
    p_stream->i_pre_skip = FUNC4( &opb, 16 );
    /* For Opus, trash the first 80 ms of decoded output as
           well, to avoid blowing out speakers if we get unlucky.
           Opus predicts content from prior frames, which can go
           badly if we seek right where the stream goes from very
           quiet to very loud. It will converge after a bit. */
    p_stream->i_pre_skip = FUNC0( 80*48, p_stream->i_pre_skip );
}