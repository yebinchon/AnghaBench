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
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_renderer_discovery_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int renderer; int /*<<< orphan*/  services_name_to_input_item; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_2__ discovery_sys_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  clear_renderer_item ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( vlc_object_t *p_this )
{
    vlc_renderer_discovery_t *p_rd = (vlc_renderer_discovery_t *)p_this;

    discovery_sys_t *p_sys = p_rd->p_sys = FUNC1( 1, sizeof( discovery_sys_t ) );
    if( !p_rd->p_sys )
        return VLC_ENOMEM;
    p_sys->parent = p_this;
    p_sys->renderer = true;

    int ret = FUNC0( p_sys );
    if( ret != VLC_SUCCESS )
    {
        FUNC3( &p_sys->services_name_to_input_item,
                              clear_renderer_item, NULL );
        FUNC2( p_sys );
    }
    return ret;
}