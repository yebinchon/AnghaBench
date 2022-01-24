#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int i_timescale; int /*<<< orphan*/  i_track_ID; int /*<<< orphan*/  const* p_track; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ mp4_track_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_track_ID; } ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  UNKNOWN_ES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5( mp4_track_t *p_track, const MP4_Box_t *p_trackbox )
{
    FUNC4( p_track, 0, sizeof(mp4_track_t) );
    FUNC2( &p_track->fmt, UNKNOWN_ES, 0 );
    p_track->i_timescale = 1;
    p_track->p_track = p_trackbox;
    const MP4_Box_t *p_tkhd = FUNC1( p_trackbox, "tkhd" );
    if(FUNC3(p_tkhd) && FUNC0(p_tkhd))
        p_track->i_track_ID = FUNC0(p_tkhd)->i_track_ID;
}