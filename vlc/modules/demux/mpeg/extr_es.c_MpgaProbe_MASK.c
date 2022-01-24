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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  const WAVE_FORMAT_MPEG ; 
 int /*<<< orphan*/  const WAVE_FORMAT_MPEGLAYER3 ; 
 int /*<<< orphan*/  const WAVE_FORMAT_UNKNOWN ; 
 scalar_t__ FUNC1 (TYPE_1__*,int*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( demux_t *p_demux, uint64_t *pi_offset )
{
    const uint16_t rgi_twocc[] = { WAVE_FORMAT_MPEG, WAVE_FORMAT_MPEGLAYER3, WAVE_FORMAT_UNKNOWN };
    bool   b_forced;
    bool   b_forced_demux;
    uint64_t i_offset;

    const uint8_t *p_peek;
    uint64_t i_skip;
    ssize_t i_peek;

    b_forced = FUNC3( p_demux, ".mp3" );
    b_forced_demux = FUNC2( p_demux, "mp3" ) ||
                     FUNC2( p_demux, "mpga" );

    i_offset = FUNC5( p_demux->s );

    if( FUNC1( p_demux, &i_skip, rgi_twocc, NULL ) )
    {
        if( !b_forced_demux )
            return VLC_EGENERIC;

        return VLC_EGENERIC;
    }

    i_peek = FUNC4( p_demux->s, &p_peek, i_skip + 4 );
    if( i_peek <= 0 || (uint64_t) i_peek < i_skip + 4 )
        return VLC_EGENERIC;

    if( !FUNC0( &p_peek[i_skip] ) )
    {
        bool b_ok = false;

        if( !b_forced_demux && !b_forced )
            return VLC_EGENERIC;

        i_peek = FUNC4( p_demux->s, &p_peek, i_skip + 8096 );
        while( i_peek > 0 && i_skip + 4 < (uint64_t) i_peek )
        {
            if( FUNC0( &p_peek[i_skip] ) )
            {
                b_ok = true;
                break;
            }
            i_skip++;
        }
        if( !b_ok && !b_forced_demux )
            return VLC_EGENERIC;
    }
    *pi_offset = i_offset + i_skip;
    return VLC_SUCCESS;
}