#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stime_t ;
struct TYPE_4__ {scalar_t__ i_moov_duration; int /*<<< orphan*/  p_moov; } ;
typedef  TYPE_1__ demux_sys_t ;
struct TYPE_5__ {scalar_t__ i_sample_count; scalar_t__ i_duration; } ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static stime_t FUNC3( demux_sys_t *p_sys, unsigned i_track_ID )
{
    MP4_Box_t *p_trak = FUNC2( p_sys->p_moov, i_track_ID );
    const MP4_Box_t *p_stsz;
    const MP4_Box_t *p_tkhd;
    if ( (p_tkhd = FUNC1( p_trak, "tkhd" )) &&
         (p_stsz = FUNC1( p_trak, "mdia/minf/stbl/stsz" )) &&
         /* duration might be wrong an be set to whole duration :/ */
         FUNC0(p_stsz)->i_sample_count > 0 )
    {
        if( FUNC0(p_tkhd)->i_duration <= p_sys->i_moov_duration )
            return FUNC0(p_tkhd)->i_duration; /* In movie / mvhd scale */
        else
            return p_sys->i_moov_duration;
    }
    return 0;
}