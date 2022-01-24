#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_link; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC4( vlc_object_t *p_this )
{
    demux_t     *p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys;
    int         i_ret;

    if ( (i_ret = FUNC0( p_this )) != VLC_SUCCESS )
        return i_ret;

    /* Fill p_demux field */
    p_demux->pf_demux    = Demux;
    p_demux->pf_control  = Control;
    p_sys = p_demux->p_sys;

    p_sys->i_link = FUNC3( p_demux, "linsys-sdi-link" );

    if( FUNC1( p_demux ) != VLC_SUCCESS )
    {
        FUNC2( p_sys );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}