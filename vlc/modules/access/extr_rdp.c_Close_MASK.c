#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_4__ {int /*<<< orphan*/  psz_hostname; scalar_t__ p_block; int /*<<< orphan*/  p_instance; scalar_t__ es; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( vlc_object_t *p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC6( p_sys->thread );
    FUNC7( p_sys->thread, NULL );

    if ( p_sys->es )
        FUNC1( p_demux->out, p_sys->es );

    FUNC4( p_sys->p_instance );
    FUNC5( p_sys->p_instance );
#if FREERDP_VERSION_MAJOR == 1 && FREERDP_VERSION_MINOR < 2
    freerdp_channels_global_uninit();
#endif

    if ( p_sys->p_block )
        FUNC0( p_sys->p_block );

    FUNC2( p_sys->psz_hostname );
}