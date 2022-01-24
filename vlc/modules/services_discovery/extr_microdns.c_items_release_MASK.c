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
struct item {struct item* psz_uri; int /*<<< orphan*/ * p_renderer_item; int /*<<< orphan*/ * p_input_item; } ;
struct discovery_sys {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4( struct discovery_sys *p_sys, struct item *p_item )
{
    (void) p_sys;
    if( p_item->p_input_item != NULL )
    {
        FUNC2( p_item->p_input_item );
    }
    else
    {
        FUNC0( p_item->p_renderer_item != NULL );
        FUNC3( p_item->p_renderer_item );
    }

    FUNC1( p_item->psz_uri );
    FUNC1( p_item );
}