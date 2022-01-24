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
struct item {int dummy; } ;
struct discovery_sys {int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct discovery_sys*,struct item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 struct item* FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC4( struct discovery_sys *p_sys )
{
    for( size_t i = 0; i < FUNC2( &p_sys->items ); ++i )
    {
        struct item *p_item = FUNC3( &p_sys->items, i );
        FUNC0( p_sys, p_item );
    }
    FUNC1( &p_sys->items );
}