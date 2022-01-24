#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  i_y; int /*<<< orphan*/  i_x; } ;
typedef  TYPE_1__ vlc_mouse_t ;
typedef  int /*<<< orphan*/  pci_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {TYPE_1__ oldmouse; int /*<<< orphan*/  dvdnav; int /*<<< orphan*/  event_lock; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  MOUSE_BUTTON_LEFT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( const vlc_mouse_t *newmouse, void *p_data )
{
    demux_t *p_demux = p_data;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( !newmouse )
    {
        FUNC6( &p_sys->oldmouse );
        return;
    }

    /* FIXME? PCI usage thread safe? */
    pci_t *pci = FUNC1( p_sys->dvdnav );

    if( FUNC4( &p_sys->oldmouse, newmouse ) )
        FUNC3( p_sys->dvdnav, pci, newmouse->i_x, newmouse->i_y );
    if( FUNC5( &p_sys->oldmouse, newmouse, MOUSE_BUTTON_LEFT ) )
    {
        FUNC7( &p_sys->event_lock );
        FUNC0( p_demux, true );
        FUNC8( &p_sys->event_lock );
        FUNC2( p_sys->dvdnav, pci, newmouse->i_x, newmouse->i_y );
    }
    p_sys->oldmouse = *newmouse;
}