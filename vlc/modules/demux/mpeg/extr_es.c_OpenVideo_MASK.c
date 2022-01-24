#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  codec_m4v ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int const**,int) ; 

__attribute__((used)) static int FUNC5( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;

    /* Only m4v is supported for the moment */
    bool b_m4v_ext    = FUNC2( p_demux, ".m4v" );
    bool b_re4_ext    = !b_m4v_ext && FUNC2( p_demux, ".re4" );
    bool b_m4v_forced = FUNC1( p_demux, "m4v" ) ||
                        FUNC1( p_demux, "mp4v" );

    if( !b_m4v_ext && !b_m4v_forced && !b_re4_ext )
        return VLC_EGENERIC;

    ssize_t i_off = b_re4_ext ? 220 : 0;
    const uint8_t *p_peek;
    if( FUNC4( p_demux->s, &p_peek, i_off + 4 ) < i_off + 4 )
        return VLC_EGENERIC;
    if( p_peek[i_off + 0] != 0x00 || p_peek[i_off + 1] != 0x00 || p_peek[i_off + 2] != 0x01 )
    {
        if( !b_m4v_forced)
            return VLC_EGENERIC;
        FUNC3( p_demux,
                  "this doesn't look like an MPEG ES stream, continuing anyway" );
    }
    return FUNC0( p_demux, VIDEO_ES, &codec_m4v, i_off );
}