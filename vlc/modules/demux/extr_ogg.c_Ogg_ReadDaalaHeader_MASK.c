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
typedef  int uint8_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_9__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_3__ ogg_packet ;
struct TYPE_7__ {void* i_frame_rate_base; void* i_frame_rate; } ;
struct TYPE_8__ {TYPE_1__ video; } ;
struct TYPE_10__ {int b_force_backup; int /*<<< orphan*/  dts; scalar_t__ i_first_frame_index; scalar_t__ i_granule_shift; TYPE_2__ fmt; } ;
typedef  TYPE_4__ logical_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7( logical_stream_t *p_stream,
                                 ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;
    uint32_t i_timebase_numerator;
    uint32_t i_timebase_denominator;
    int keyframe_granule_shift;
    unsigned int i_keyframe_frequency_force;
    uint8_t i_major;
    uint8_t i_minor;
    uint8_t i_subminor;
    int i_version;

    /* Signal that we want to keep a backup of the daala
     * stream headers. They will be used when switching between
     * audio streams. */
    p_stream->b_force_backup = true;

    /* Cheat and get additionnal info ;) */
    FUNC6( &opb, p_oggpacket->packet, p_oggpacket->bytes );
    FUNC4( &opb, 48 );

    i_major = FUNC5( &opb, 8 ); /* major version num */
    i_minor = FUNC5( &opb, 8 ); /* minor version num */
    i_subminor = FUNC5( &opb, 8 ); /* subminor version num */

    FUNC4( &opb, 32 ); /* width */
    FUNC4( &opb, 32 ); /* height */

    FUNC4( &opb, 32 ); /* aspect numerator */
    FUNC4( &opb, 32 ); /* aspect denominator */
    i_timebase_numerator = FUNC5( &opb, 32 );

    i_timebase_denominator = FUNC5( &opb, 32 );
    i_timebase_denominator = FUNC1( i_timebase_denominator, 1 );

    p_stream->fmt.video.i_frame_rate = i_timebase_numerator;
    p_stream->fmt.video.i_frame_rate_base = i_timebase_denominator;

    FUNC4( &opb, 32 ); /* frame duration */

    keyframe_granule_shift = FUNC5( &opb, 8 );
    keyframe_granule_shift = FUNC2(keyframe_granule_shift, 31);
    i_keyframe_frequency_force = 1u << keyframe_granule_shift;

    /* granule_shift = i_log( frequency_force -1 ) */
    p_stream->i_granule_shift = 0;
    i_keyframe_frequency_force--;
    while( i_keyframe_frequency_force )
    {
        p_stream->i_granule_shift++;
        i_keyframe_frequency_force >>= 1;
    }

    i_version = i_major * 1000000 + i_minor * 1000 + i_subminor;
    FUNC0(i_version);
    p_stream->i_first_frame_index = 0;
    if ( !i_timebase_numerator || !i_timebase_denominator )
        return false;
    FUNC3( &p_stream->dts, i_timebase_numerator, i_timebase_denominator );

    return true;
}