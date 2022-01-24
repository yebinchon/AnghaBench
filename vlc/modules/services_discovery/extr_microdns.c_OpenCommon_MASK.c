#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct discovery_sys {scalar_t__ i_nb_service_names; int /*<<< orphan*/ * p_microdns; int /*<<< orphan*/  thread; int /*<<< orphan*/ * ppsz_service_names; int /*<<< orphan*/  items; int /*<<< orphan*/  stop; } ;
struct TYPE_2__ {int b_renderer; int /*<<< orphan*/  psz_service_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDNS_ADDR_IPV4 ; 
 int /*<<< orphan*/  MDNS_PORT ; 
 unsigned int NB_PROTOCOLS ; 
 int /*<<< orphan*/  RunRD ; 
 int /*<<< orphan*/  RunSD ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct discovery_sys*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* protocols ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9( vlc_object_t *p_obj, struct discovery_sys *p_sys, bool b_renderer )
{
    int i_ret = VLC_EGENERIC;
    FUNC0( &p_sys->stop, false );
    FUNC7( &p_sys->items );

    /* Listen to protocols that are handled by VLC */
    for( unsigned int i = 0; i < NB_PROTOCOLS; ++i )
    {
        if( protocols[i].b_renderer == b_renderer )
            p_sys->ppsz_service_names[p_sys->i_nb_service_names++] =
                protocols[i].psz_service_name;
    }

    if( p_sys->i_nb_service_names == 0 )
    {
        FUNC5( p_obj, "no services found" );
        goto error;
    }
    for( unsigned int i = 0; i < p_sys->i_nb_service_names; ++i )
        FUNC4( p_obj, "mDNS: listening to %s %s", p_sys->ppsz_service_names[i],
                 b_renderer ? "renderer" : "service" );

    int i_status;
    if( ( i_status = FUNC3( &p_sys->p_microdns, MDNS_ADDR_IPV4,
                                MDNS_PORT ) ) < 0 )
    {
        FUNC6( p_obj, "init", i_status );
        goto error;
    }

    if( FUNC8( &p_sys->thread, b_renderer ? RunRD : RunSD, p_obj,
                   VLC_THREAD_PRIORITY_LOW) )
    {
        FUNC5( p_obj, "Can't run the lookup thread" );
        goto error;
    }

    return VLC_SUCCESS;
error:
    if( p_sys->p_microdns != NULL )
        FUNC2( p_sys->p_microdns );
    FUNC1( p_sys );
    return i_ret;
}