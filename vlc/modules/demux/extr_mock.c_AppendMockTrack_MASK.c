#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i_group; int b_packetized; } ;
struct mock_track {int /*<<< orphan*/  id; TYPE_1__ fmt; } ;
struct demux_sys {int /*<<< orphan*/  tracks; } ;
typedef  TYPE_1__ es_format_t ;
struct TYPE_7__ {int /*<<< orphan*/  out; struct demux_sys* p_sys; } ;
typedef  TYPE_2__ demux_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mock_track*) ; 
 struct mock_track* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct mock_track*) ; 

__attribute__((used)) static int
FUNC5(demux_t *demux, const es_format_t *fmt, int group,
                bool packetized)
{
    struct demux_sys *sys = demux->p_sys;
    struct mock_track *mock_track = FUNC3(sizeof(*mock_track));
    if (!mock_track)
        return VLC_EGENERIC;
    mock_track->fmt = *fmt;
    mock_track->fmt.i_group = group;
    mock_track->fmt.b_packetized = packetized;
    mock_track->id = FUNC1(demux->out, & mock_track->fmt);
    if (!mock_track->id)
    {
        FUNC2(mock_track);
        return VLC_ENOMEM;
    }
    bool success = FUNC4(&sys->tracks, mock_track);
    FUNC0(success); (void) success; /* checked by reserve() */
    return VLC_SUCCESS;
}