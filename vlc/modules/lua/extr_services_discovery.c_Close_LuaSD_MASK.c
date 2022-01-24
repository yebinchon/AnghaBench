#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int i_query; int /*<<< orphan*/  L; struct TYPE_6__* psz_filename; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; struct TYPE_6__** ppsz_query; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t * )p_this;
    services_discovery_sys_t *p_sys = p_sd->p_sys;

    FUNC3( p_sys->thread );
    FUNC5( p_sys->thread, NULL );

    for( int i = 0; i < p_sys->i_query; i++ )
        FUNC1( p_sys->ppsz_query[i] );
    FUNC0( p_sys->i_query, p_sys->ppsz_query );

    FUNC4( &p_sys->cond );
    FUNC6( &p_sys->lock );
    FUNC1( p_sys->psz_filename );
    FUNC2( p_sys->L );
    FUNC1( p_sys );
}