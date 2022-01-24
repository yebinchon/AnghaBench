#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_9__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_8__ {scalar_t__ i_codec; int i_extra; int /*<<< orphan*/  p_extra; } ;
struct TYPE_10__ {TYPE_1__ fmt; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ SSIZE_MAX ; 
 scalar_t__ VLC_CODEC_ALAC ; 
 scalar_t__ VLC_CODEC_MP4A ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,scalar_t__) ; 

__attribute__((used)) static int FUNC6( demux_t *p_demux, uint64_t i_size )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    const uint8_t *p_peek;

    if( i_size > SSIZE_MAX )
    {
        FUNC4( p_demux, "Magic Cookie chunk too big" );
        return VLC_EGENERIC;
    }

    if( FUNC5( p_demux->s, &p_peek, i_size ) < (ssize_t)i_size )
    {
        FUNC4( p_demux, "Couldn't peek extra data" );
        return VLC_EGENERIC;
    }

    if( p_sys->fmt.i_codec  == VLC_CODEC_ALAC )
    {
        int error = FUNC1( p_demux, p_peek, i_size );
        if( error ) return error;
    }
    else if( p_sys->fmt.i_codec == VLC_CODEC_MP4A )
    {
        int error = FUNC0( p_demux, p_peek, i_size );
        if( error ) return error;
    }
    else
    {
        p_sys->fmt.i_extra = (int)i_size;
        p_sys->fmt.p_extra = FUNC2( i_size );

        if( !p_sys->fmt.p_extra )
        {
            return VLC_ENOMEM;
        }
        FUNC3( p_sys->fmt.p_extra, p_peek, p_sys->fmt.i_extra );
    }

    return VLC_SUCCESS;
}