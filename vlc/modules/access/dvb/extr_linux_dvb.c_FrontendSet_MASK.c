#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {TYPE_1__* p_frontend; } ;
typedef  TYPE_3__ dvb_sys_t ;
struct TYPE_10__ {int type; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {scalar_t__ i_last_status; TYPE_2__ info; } ;

/* Variables and functions */
#define  FE_ATSC 131 
#define  FE_OFDM 130 
#define  FE_QAM 129 
#define  FE_QPSK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

int FUNC5( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    switch( p_sys->p_frontend->info.type )
    {
    /* DVB-S */
    case FE_QPSK:
        if( FUNC3( p_access, p_sys ) )
        {
            FUNC4( p_access, "DVB-S tuning error" );
            return VLC_EGENERIC;
        }
        break;

    /* DVB-C */
    case FE_QAM:
        if( FUNC2( p_access, p_sys ) )
        {
            FUNC4( p_access, "DVB-C tuning error" );
            return VLC_EGENERIC;
        }
        break;

    /* DVB-T */
    case FE_OFDM:
        if( FUNC1( p_access, p_sys ) )
        {
            FUNC4( p_access, "DVB-T tuning error" );
            return VLC_EGENERIC;
        }
        break;

    /* ATSC */
    case FE_ATSC:
        if( FUNC0( p_access, p_sys ) )
        {
            FUNC4( p_access, "ATSC tuning error" );
            return VLC_EGENERIC;
        }
        break;

    default:
        FUNC4( p_access, "tuner type %s not supported",
                 p_sys->p_frontend->info.name );
        return VLC_EGENERIC;
    }
    p_sys->p_frontend->i_last_status = 0;
    return VLC_SUCCESS;
}