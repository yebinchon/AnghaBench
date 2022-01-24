#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  fec_inner; void* symbol_rate; } ;
struct TYPE_7__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; int /*<<< orphan*/  inversion; } ;
struct dvb_frontend_event {int frequency; TYPE_2__ u; int /*<<< orphan*/  inversion; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_frontend_handle; } ;
typedef  TYPE_3__ dvb_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FEC_NONE ; 
 int /*<<< orphan*/  FE_GET_EVENT ; 
 int /*<<< orphan*/  FE_SET_FRONTEND ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    struct dvb_frontend_parameters fep;
    int i_val;
    int i_frequency, i_lnb_slof = 0, i_lnb_lof1, i_lnb_lof2 = 0;

    /* Prepare the fep structure */
    i_frequency = FUNC5( p_access, "dvb-frequency" );

    i_val = FUNC5( p_access, "dvb-lnb-lof1" );
    if( i_val == 0 )
    {
        /* Automatic mode. */
        if ( i_frequency >= 950000 && i_frequency <= 2150000 )
        {
            FUNC3( p_access, "frequency %d is in IF-band", i_frequency );
            i_lnb_lof1 = 0;
        }
        else if ( i_frequency >= 2500000 && i_frequency <= 2700000 )
        {
            FUNC3( p_access, "frequency %d is in S-band", i_frequency );
            i_lnb_lof1 = 3650000;
        }
        else if ( i_frequency >= 3400000 && i_frequency <= 4200000 )
        {
            FUNC3( p_access, "frequency %d is in C-band (lower)",
                     i_frequency );
            i_lnb_lof1 = 5150000;
        }
        else if ( i_frequency >= 4500000 && i_frequency <= 4800000 )
        {
            FUNC3( p_access, "frequency %d is in C-band (higher)",
                     i_frequency );
            i_lnb_lof1 = 5950000;
        }
        else if ( i_frequency >= 10700000 && i_frequency <= 13250000 )
        {
            FUNC3( p_access, "frequency %d is in Ku-band",
                     i_frequency );
            i_lnb_lof1 = 9750000;
            i_lnb_lof2 = 10600000;
            i_lnb_slof = 11700000;
        }
        else
        {
            FUNC4( p_access, "frequency %d is out of any known band",
                     i_frequency );
            FUNC4( p_access, "specify dvb-lnb-lof1 manually for the local "
                     "oscillator frequency" );
            return VLC_EGENERIC;
        }
        FUNC6( p_access, "dvb-lnb-lof1", i_lnb_lof1 );
        FUNC6( p_access, "dvb-lnb-lof2", i_lnb_lof2 );
        FUNC6( p_access, "dvb-lnb-slof", i_lnb_slof );
    }
    else
    {
        i_lnb_lof1 = i_val;
        i_lnb_lof2 = FUNC5( p_access, "dvb-lnb-lof2" );
        i_lnb_slof = FUNC5( p_access, "dvb-lnb-slof" );
    }

    if( i_lnb_slof && i_frequency >= i_lnb_slof )
    {
        i_frequency -= i_lnb_lof2;
    }
    else
    {
        i_frequency -= i_lnb_lof1;
    }
    fep.frequency = i_frequency >= 0 ? i_frequency : -i_frequency;

    fep.inversion = FUNC0( p_access );

    fep.u.qpsk.symbol_rate = FUNC5( p_access, "dvb-srate" );

    fep.u.qpsk.fec_inner = FEC_NONE;

    if( FUNC1( p_access, p_sys ) < 0 )
    {
        return VLC_EGENERIC;
    }

    /* Empty the event queue */
    for( ; ; )
    {
        struct dvb_frontend_event event;
        if ( FUNC2( p_sys->i_frontend_handle, FE_GET_EVENT, &event ) < 0
              && errno == EWOULDBLOCK )
            break;
    }

    /* Now send it all to the frontend device */
    if( FUNC2( p_sys->i_frontend_handle, FE_SET_FRONTEND, &fep ) < 0 )
    {
        FUNC4( p_access, "frontend error: %s", FUNC7(errno) );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}