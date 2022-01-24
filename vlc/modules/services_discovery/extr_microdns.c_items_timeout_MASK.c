#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_renderer_discovery_t ;
struct item {scalar_t__ i_last_seen; int /*<<< orphan*/  p_renderer_item; int /*<<< orphan*/  p_input_item; } ;
struct discovery_sys {int /*<<< orphan*/  items; } ;
typedef  int /*<<< orphan*/  services_discovery_t ;

/* Variables and functions */
 scalar_t__ TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct discovery_sys*,struct item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 struct item* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void
FUNC8( struct discovery_sys *p_sys, services_discovery_t *p_sd,
               vlc_renderer_discovery_t *p_rd )
{
    FUNC0( p_rd != NULL || p_sd != NULL );
    vlc_tick_t i_now = FUNC7();

    /* Remove items that are not seen since TIMEOUT */
    for( size_t i = 0; i < FUNC3( &p_sys->items ); ++i )
    {
        struct item *p_item = FUNC4( &p_sys->items, i );
        if( i_now - p_item->i_last_seen > TIMEOUT )
        {
            if( p_sd != NULL )
                FUNC2( p_sd, p_item->p_input_item );
            else
                FUNC6( p_rd, p_item->p_renderer_item );
            FUNC1( p_sys, p_item );
            FUNC5( &p_sys->items, i-- );
        }
    }
}