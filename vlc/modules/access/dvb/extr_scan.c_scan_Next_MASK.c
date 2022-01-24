#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int vlc_tick_t ;
struct TYPE_10__ {scalar_t__ i_frequency; } ;
typedef  TYPE_1__ scan_tuner_config_t ;
struct TYPE_11__ {double i_time_start; int /*<<< orphan*/ * p_dialog_id; int /*<<< orphan*/  p_obj; int /*<<< orphan*/  parameter; } ;
typedef  TYPE_2__ scan_t ;

/* Variables and functions */
 int MSTRTIME_MAX_SIZE ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*,double*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,double) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int const) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,double,char*,char*,char const*,double,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double,char const*,double,size_t const,int /*<<< orphan*/ ) ; 
 double FUNC9 () ; 

__attribute__((used)) static int FUNC10( scan_t *p_scan, scan_tuner_config_t *p_cfg )
{
    double f_position;
    int i_ret;

    if( FUNC4( p_scan ) )
        return VLC_EGENERIC;

    //do
    {
        FUNC5( p_cfg, &p_scan->parameter );

        i_ret = FUNC0( p_scan, p_cfg, &f_position );
        if( i_ret )
            return i_ret;
    }
    //while( !scan_tuner_config_ParametersValidate( &p_scan->parameter, p_cfg ) );

    const size_t i_total_services = FUNC3( p_scan );
    const vlc_tick_t i_eta = f_position > 0.005 ? (FUNC9() - p_scan->i_time_start) * ( 1.0 / f_position - 1.0 ) : -1;
    char psz_eta[MSTRTIME_MAX_SIZE];
    const char *psz_fmt = FUNC1("%.1f MHz (%d services)\n~%s remaining");

    if( i_eta >= 0 )
        FUNC2( p_scan->p_obj, "Scan ETA %s | %f", FUNC6( psz_eta, i_eta/1000000 ), f_position * 100 );

    if( p_scan->p_dialog_id == NULL )
    {
        p_scan->p_dialog_id =
            FUNC7( p_scan->p_obj, false,
                                         f_position, FUNC1("Cancel"),
                                         FUNC1("Scanning DVB"), psz_fmt,
                                         (double)p_cfg->i_frequency / 1000000,
                                         i_total_services,
                                         FUNC6( psz_eta, i_eta/1000000 ) );
    }
    else
    {
        FUNC8( p_scan->p_obj, p_scan->p_dialog_id,
                                         f_position, psz_fmt,
                                         (double)p_cfg->i_frequency / 1000000,
                                         i_total_services,
                                         FUNC6( psz_eta, i_eta/1000000 ) );
    }

    return VLC_SUCCESS;
}