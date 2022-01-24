#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct dmx_pes_filter_params {int pid; int /*<<< orphan*/  pes_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  dmx ;

/* Variables and functions */
 char* DMX ; 
 int /*<<< orphan*/  DMX_IMMEDIATE_START ; 
 int /*<<< orphan*/  DMX_IN_FRONTEND ; 
 int /*<<< orphan*/  DMX_OUT_TS_TAP ; 
 int /*<<< orphan*/  DMX_PES_AUDIO0 ; 
 int /*<<< orphan*/  DMX_PES_AUDIO1 ; 
 int /*<<< orphan*/  DMX_PES_AUDIO2 ; 
 int /*<<< orphan*/  DMX_PES_AUDIO3 ; 
 int /*<<< orphan*/  DMX_PES_OTHER ; 
 int /*<<< orphan*/  DMX_PES_PCR0 ; 
 int /*<<< orphan*/  DMX_PES_PCR1 ; 
 int /*<<< orphan*/  DMX_PES_PCR2 ; 
 int /*<<< orphan*/  DMX_PES_PCR3 ; 
 int /*<<< orphan*/  DMX_PES_SUBTITLE0 ; 
 int /*<<< orphan*/  DMX_PES_SUBTITLE1 ; 
 int /*<<< orphan*/  DMX_PES_SUBTITLE2 ; 
 int /*<<< orphan*/  DMX_PES_SUBTITLE3 ; 
 int /*<<< orphan*/  DMX_PES_TELETEXT0 ; 
 int /*<<< orphan*/  DMX_PES_TELETEXT1 ; 
 int /*<<< orphan*/  DMX_PES_TELETEXT2 ; 
 int /*<<< orphan*/  DMX_PES_TELETEXT3 ; 
 int /*<<< orphan*/  DMX_PES_VIDEO0 ; 
 int /*<<< orphan*/  DMX_PES_VIDEO1 ; 
 int /*<<< orphan*/  DMX_PES_VIDEO2 ; 
 int /*<<< orphan*/  DMX_PES_VIDEO3 ; 
 int /*<<< orphan*/  DMX_SET_PES_FILTER ; 
 int /*<<< orphan*/  O_RDWR ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct dmx_pes_filter_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (char*,int,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7( vlc_object_t *p_access, int i_pid, int * pi_fd, int i_type )
{
    struct dmx_pes_filter_params s_filter_params;
    unsigned int i_adapter, i_device;
    char dmx[128];

    i_adapter = FUNC4( p_access, "dvb-adapter" );
    i_device = FUNC4( p_access, "dvb-device" );

    if( FUNC3( dmx, sizeof(dmx), DMX, i_adapter, i_device )
            >= (int)sizeof(dmx) )
    {
        FUNC2( p_access, "snprintf() truncated string for DMX" );
        dmx[sizeof(dmx) - 1] = '\0';
    }

    FUNC1( p_access, "Opening device %s", dmx );
    if( (*pi_fd = FUNC5(dmx, O_RDWR)) < 0 )
    {
        FUNC2( p_access, "DMXSetFilter: opening device failed: %s",
                 FUNC6(errno) );
        return VLC_EGENERIC;
    }

    /* We fill the DEMUX structure : */
    s_filter_params.pid     =   i_pid;
    s_filter_params.input   =   DMX_IN_FRONTEND;
    s_filter_params.output  =   DMX_OUT_TS_TAP;
    s_filter_params.flags   =   DMX_IMMEDIATE_START;

    switch ( i_type )
    {   /* First device */
        case 1:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_VIDEO0 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_VIDEO0;
            break;
        case 2:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_AUDIO0 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_AUDIO0;
            break;
        case 3:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_TELETEXT0 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_TELETEXT0;
            break;
        case 4:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_SUBTITLE0 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_SUBTITLE0;
            break;
        case 5:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_PCR0 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_PCR0;
            break;
        /* Second device */
        case 6:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_VIDEO1 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_VIDEO1;
            break;
        case 7:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_AUDIO1 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_AUDIO1;
            break;
        case 8:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_TELETEXT1 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_TELETEXT1;
            break;
        case 9:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_SUBTITLE1 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_SUBTITLE1;
            break;
        case 10:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_PCR1 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_PCR1;
            break;
        /* Third device */
        case 11:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_VIDEO2 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_VIDEO2;
            break;
        case 12:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_AUDIO2 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_AUDIO2;
            break;
        case 13:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_TELETEXT2 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_TELETEXT2;
            break;
        case 14:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_SUBTITLE2 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_SUBTITLE2;
            break;
        case 15:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_PCR2 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_PCR2;
            break;
        /* Forth device */
        case 16:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_VIDEO3 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_VIDEO3;
            break;
        case 17:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_AUDIO3 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_AUDIO3;
            break;
        case 18:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_TELETEXT3 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_TELETEXT3;
            break;
        case 19:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_SUBTITLE3 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_SUBTITLE3;
            break;
        case 20:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_PCR3 for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_PCR3;
            break;
        /* Usually used by Nova cards */
        case 21:
        default:
            FUNC1(p_access, "DMXSetFilter: DMX_PES_OTHER for PID %d", i_pid);
            s_filter_params.pes_type = DMX_PES_OTHER;
            break;
    }

    /* We then give the order to the device : */
    if( FUNC0( *pi_fd, DMX_SET_PES_FILTER, &s_filter_params ) )
    {
        FUNC2( p_access, "setting demux PES filter failed: %s",
                 FUNC6(errno) );
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}