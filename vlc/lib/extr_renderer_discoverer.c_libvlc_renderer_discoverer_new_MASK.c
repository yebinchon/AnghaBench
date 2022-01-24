#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  event_manager; int /*<<< orphan*/ * p_rd; int /*<<< orphan*/  pp_items; int /*<<< orphan*/  i_items; int /*<<< orphan*/  name; int /*<<< orphan*/  p_object; } ;
typedef  TYPE_1__ libvlc_renderer_discoverer_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_2__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

libvlc_renderer_discoverer_t *
FUNC7( libvlc_instance_t *p_inst,
                                const char *psz_name )
{
    size_t len = FUNC5( psz_name ) + 1;
    libvlc_renderer_discoverer_t *p_lrd = FUNC3( sizeof(*p_lrd) + len );

    if( FUNC6(p_lrd == NULL) )
        return NULL;

    p_lrd->p_object = FUNC1(p_inst->p_libvlc_int);
    FUNC4( p_lrd->name, psz_name, len );
    FUNC0( p_lrd->i_items, p_lrd->pp_items );
    p_lrd->p_rd = NULL;
    FUNC2( &p_lrd->event_manager, p_lrd );

    return p_lrd;
}