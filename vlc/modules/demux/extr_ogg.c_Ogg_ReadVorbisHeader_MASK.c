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
struct TYPE_10__ {void* i_rate; void* i_channels; } ;
struct TYPE_7__ {void* i_bitrate; TYPE_4__ audio; } ;
struct TYPE_9__ {int b_force_backup; TYPE_1__ fmt; int /*<<< orphan*/  dts; } ;
typedef  TYPE_3__ logical_stream_t ;

/* Variables and functions */
 void* INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5( logical_stream_t *p_stream,
                                  ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;

    /* Signal that we want to keep a backup of the vorbis
     * stream headers. They will be used when switching between
     * audio streams. */
    p_stream->b_force_backup = true;

    /* Cheat and get additionnal info ;) */
    FUNC4( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    FUNC2( &opb, 88 );
    p_stream->fmt.audio.i_channels = FUNC3( &opb, 8 );
    FUNC1(&p_stream->fmt.audio);
    p_stream->fmt.audio.i_rate = FUNC3( &opb, 32 );
    if( p_stream->fmt.audio.i_rate == 0 )
        return false;
    FUNC0( &p_stream->dts, p_stream->fmt.audio.i_rate, 1 );

    FUNC2( &opb, 32 );
    p_stream->fmt.i_bitrate = FUNC3( &opb, 32 ); /* is signed 32 */
    if( p_stream->fmt.i_bitrate > INT32_MAX ) p_stream->fmt.i_bitrate = 0;
    return true;
}