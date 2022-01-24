#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {struct TYPE_5__* psz_fullpath; int /*<<< orphan*/  url; scalar_t__ p_session; scalar_t__ i_fd; scalar_t__ p_ns; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( vlc_object_t *p_this )
{
    stream_t     *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->p_ns )
        FUNC1( p_sys->p_ns );
    if( p_sys->i_fd )
        FUNC2( p_sys->p_session, p_sys->i_fd );
    if( p_sys->p_session )
        FUNC3( p_sys->p_session );
    FUNC4( &p_sys->url );
    FUNC0( p_sys->psz_fullpath );

    FUNC0( p_sys );
}