#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_renderer_item_t ;
struct TYPE_9__ {TYPE_5__* sys; } ;
struct TYPE_12__ {TYPE_1__ owner; } ;
typedef  TYPE_4__ vlc_renderer_discovery_t ;
typedef  int /*<<< orphan*/  libvlc_renderer_item_t ;
struct TYPE_13__ {int /*<<< orphan*/  event_manager; int /*<<< orphan*/  pp_items; int /*<<< orphan*/  i_items; } ;
typedef  TYPE_5__ libvlc_renderer_discoverer_t ;
struct TYPE_10__ {int /*<<< orphan*/ * item; } ;
struct TYPE_11__ {TYPE_2__ renderer_discoverer_item_added; } ;
struct TYPE_14__ {TYPE_3__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_6__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libvlc_RendererDiscovererItemAdded ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( vlc_renderer_discovery_t *rd,
                                           vlc_renderer_item_t *p_item )
{
    libvlc_renderer_discoverer_t *p_lrd = rd->owner.sys;

    FUNC2( p_item );

    FUNC0( p_lrd->i_items, p_lrd->pp_items, p_item );

    libvlc_event_t event = {
        .type = libvlc_RendererDiscovererItemAdded,
        .u.renderer_discoverer_item_added.item =
            (libvlc_renderer_item_t*) p_item,
    };
    FUNC1( &p_lrd->event_manager, &event );
}