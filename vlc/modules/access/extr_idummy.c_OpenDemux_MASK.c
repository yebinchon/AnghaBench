#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {char* psz_location; void* pf_control; void* pf_demux; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {scalar_t__ length; scalar_t__ end; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 void* ControlPause ; 
 void* DemuxControl ; 
 void* DemuxHold ; 
 void* DemuxNoOp ; 
 void* DemuxPause ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 double FUNC5 (char const*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (double) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int FUNC10( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    const char *psz_name = p_demux->psz_location;

    p_demux->p_sys = NULL;

    /* Check for a "vlc://nop" command */
    if( !FUNC3( psz_name, "nop" ) )
    {
nop:
        FUNC2( p_demux, "command `nop'" );
        p_demux->pf_demux = DemuxNoOp;
        p_demux->pf_control = DemuxControl;
        return VLC_SUCCESS;
    }

    /* Check for a "vlc://quit" command */
    if( !FUNC3( psz_name, "quit" ) )
    {
        FUNC2( p_demux, "command `quit'" );
        p_demux->pf_demux = DemuxNoOp;
        p_demux->pf_control = DemuxControl;
        FUNC0( FUNC7(p_demux) );
        return VLC_SUCCESS;
    }

    if( !FUNC3( psz_name, "pause" ) )
    {
        FUNC2( p_demux, "command `pause'" );

        p_demux->pf_demux = DemuxHold;
        p_demux->pf_control = DemuxControl;
        return VLC_SUCCESS;
    }

    /* Check for a "vlc://pause:***" command */
    if( !FUNC4( psz_name, "pause:", 6 ) )
    {
        double f = FUNC5( psz_name + 6 );
        vlc_tick_t length = FUNC8( f );

        FUNC2( p_demux, "command `pause %f'", f );
        if( length == 0 )
            goto nop; /* avoid division by zero */

        demux_sys_t *p_sys = FUNC6( p_this, sizeof( *p_sys ) );
        if( p_sys == NULL )
            return VLC_ENOMEM;

        p_sys->end = FUNC9() + length;
        p_sys->length = length;

        p_demux->p_sys = p_sys;
        p_demux->pf_demux = DemuxPause;
        p_demux->pf_control = ControlPause;
        return VLC_SUCCESS;
    }

    FUNC1( p_demux, "unknown command `%s'", psz_name );
    return VLC_EGENERIC;
}