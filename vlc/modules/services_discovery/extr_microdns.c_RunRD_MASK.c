#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct discovery_sys* p_sys; } ;
typedef  TYPE_1__ vlc_renderer_discovery_t ;
struct discovery_sys {int /*<<< orphan*/  i_nb_service_names; int /*<<< orphan*/  ppsz_service_names; int /*<<< orphan*/  p_microdns; } ;

/* Variables and functions */
 int /*<<< orphan*/  LISTEN_INTERVAL ; 
 int /*<<< orphan*/  RR_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  new_entries_rd_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stop_rd_cb ; 

__attribute__((used)) static void *
FUNC4( void *p_this )
{
    vlc_renderer_discovery_t *p_rd = p_this;
    struct discovery_sys *p_sys = p_rd->p_sys;

    int i_status = FUNC2( p_sys->p_microdns,
                                p_sys->ppsz_service_names,
                                p_sys->i_nb_service_names,
                                RR_PTR, FUNC0(LISTEN_INTERVAL),
                                stop_rd_cb, new_entries_rd_cb, p_rd );

    if( i_status < 0 )
        FUNC3( FUNC1( p_rd ), "listen", i_status );

    return NULL;
}