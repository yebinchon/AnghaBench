#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_7__ {size_t i_track; } ;
typedef  TYPE_1__ demux_sys_t ;
struct TYPE_8__ {size_t i_stream_number_count; int /*<<< orphan*/ * pi_stream_numbers; } ;
typedef  TYPE_2__ asf_object_bitrate_mutual_exclusion_t ;
struct TYPE_9__ {size_t i_count; int /*<<< orphan*/ * pi_stream_numbers; } ;
typedef  TYPE_3__ asf_es_priorities_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  asf_object_bitrate_mutual_exclusion_guid ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 

__attribute__((used)) static void FUNC2( demux_sys_t *p_sys, void *p_hdr,
                                                 asf_es_priorities_t *p_prios )
{
    /* Find bitrate exclusions */
    asf_object_bitrate_mutual_exclusion_t *p_bitrate_mutex =
            FUNC0( p_hdr, &asf_object_bitrate_mutual_exclusion_guid, 0 );
    if (! p_bitrate_mutex ) return;

#if ( UINT_MAX > SIZE_MAX / 2 )
    if ( p_sys->i_track > (size_t)SIZE_MAX / sizeof(uint16_t) )
        return;
#endif
    p_prios->pi_stream_numbers = FUNC1( p_sys->i_track, sizeof( uint16_t ) );
    if ( !p_prios->pi_stream_numbers ) return;

    if ( p_bitrate_mutex->i_stream_number_count )
    {
        /* Just remove < highest */
        for ( uint16_t i = 1; i < p_bitrate_mutex->i_stream_number_count; i++ )
        {
            if ( p_prios->i_count > p_sys->i_track || i > p_sys->i_track ) break;
            p_prios->pi_stream_numbers[ p_prios->i_count++ ] = p_bitrate_mutex->pi_stream_numbers[ i ];
        }
    }

}