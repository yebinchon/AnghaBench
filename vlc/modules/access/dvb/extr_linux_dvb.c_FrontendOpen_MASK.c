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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int type; } ;
struct TYPE_9__ {TYPE_1__ info; } ;
typedef  TYPE_2__ frontend_t ;
typedef  int /*<<< orphan*/  frontend ;
struct TYPE_10__ {int /*<<< orphan*/  i_frontend_handle; TYPE_2__* p_frontend; } ;
typedef  TYPE_3__ dvb_sys_t ;

/* Variables and functions */
#define  FE_ATSC 131 
#define  FE_OFDM 130 
#define  FE_QAM 129 
#define  FE_QPSK 128 
 char* FRONTEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (char*,int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12( vlc_object_t *p_access, dvb_sys_t *p_sys, const char *psz_access )
{
    frontend_t * p_frontend;
    unsigned int i_adapter, i_device;
    bool b_probe;
    char frontend[128];

    i_adapter = FUNC8( p_access, "dvb-adapter" );
    i_device = FUNC8( p_access, "dvb-device" );
    b_probe = FUNC7( p_access, "dvb-probe" );

    if( FUNC5( frontend, sizeof(frontend), FRONTEND, i_adapter, i_device ) >= (int)sizeof(frontend) )
    {
        FUNC4( p_access, "snprintf() truncated string for FRONTEND" );
        frontend[sizeof(frontend) - 1] = '\0';
    }

    p_sys->p_frontend = p_frontend = FUNC2( sizeof(frontend_t) );
    if( !p_frontend )
        return VLC_ENOMEM;

    FUNC3( p_access, "Opening device %s", frontend );
    if( (p_sys->i_frontend_handle = FUNC10(frontend, O_RDWR | O_NONBLOCK)) < 0 )
    {
        FUNC4( p_access, "FrontEndOpen: opening device failed: %s",
                 FUNC11(errno) );
        FUNC1( p_frontend );
        return VLC_EGENERIC;
    }

    if( b_probe )
    {
        const char * psz_expected = NULL;
        const char * psz_real;

        if( FUNC0( p_access, p_sys ) < 0 )
        {
            FUNC9( p_sys->i_frontend_handle );
            FUNC1( p_frontend );
            return VLC_EGENERIC;
        }

        switch( p_frontend->info.type )
        {
        case FE_OFDM:
            psz_real = "DVB-T";
            break;
        case FE_QAM:
            psz_real = "DVB-C";
            break;
        case FE_QPSK:
            psz_real = "DVB-S";
            break;
        case FE_ATSC:
            psz_real = "ATSC";
            break;
        default:
            psz_real = "unknown";
        }

        /* Sanity checks */
        if( (!FUNC6( psz_access, "qpsk", 4 ) ||
             !FUNC6( psz_access, "dvb-s", 5 ) ||
             !FUNC6( psz_access, "satellite", 9 ) ) &&
             (p_frontend->info.type != FE_QPSK) )
        {
            psz_expected = "DVB-S";
        }
        if( (!FUNC6( psz_access, "cable", 5 ) ||
             !FUNC6( psz_access, "dvb-c", 5 ) ) &&
             (p_frontend->info.type != FE_QAM) )
        {
            psz_expected = "DVB-C";
        }
        if( (!FUNC6( psz_access, "terrestrial", 11 ) ||
             !FUNC6( psz_access, "dvb-t", 5 ) ) &&
             (p_frontend->info.type != FE_OFDM) )
        {
            psz_expected = "DVB-T";
        }

        if( (!FUNC6( psz_access, "usdigital", 9 ) ||
             !FUNC6( psz_access, "atsc", 4 ) ) &&
             (p_frontend->info.type != FE_ATSC) )
        {
            psz_expected = "ATSC";
        }

        if( psz_expected != NULL )
        {
            FUNC4( p_access, "requested type %s not supported by %s tuner",
                     psz_expected, psz_real );
            FUNC9( p_sys->i_frontend_handle );
            FUNC1( p_frontend );
            return VLC_EGENERIC;
        }
    }
    else /* no frontend probing is done so use default border values. */
    {
        FUNC3( p_access, "using default values for frontend info" );

        FUNC3( p_access, "method of access is %s", psz_access );
        p_frontend->info.type = FE_QPSK;
        if( !FUNC6( psz_access, "qpsk", 4 ) ||
            !FUNC6( psz_access, "dvb-s", 5 ) )
            p_frontend->info.type = FE_QPSK;
        else if( !FUNC6( psz_access, "cable", 5 ) ||
                 !FUNC6( psz_access, "dvb-c", 5 ) )
            p_frontend->info.type = FE_QAM;
        else if( !FUNC6( psz_access, "terrestrial", 11 ) ||
                 !FUNC6( psz_access, "dvb-t", 5 ) )
            p_frontend->info.type = FE_OFDM;
        else if( !FUNC6( psz_access, "usdigital", 9 ) ||
                 !FUNC6( psz_access, "atsc", 4 ) )
            p_frontend->info.type = FE_ATSC;
    }

    return VLC_SUCCESS;
}