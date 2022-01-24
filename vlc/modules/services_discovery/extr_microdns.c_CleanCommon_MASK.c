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
struct discovery_sys {int /*<<< orphan*/  p_microdns; int /*<<< orphan*/  thread; int /*<<< orphan*/  stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct discovery_sys*) ; 
 int /*<<< orphan*/  FUNC2 (struct discovery_sys*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5( struct discovery_sys *p_sys )
{
    FUNC0( &p_sys->stop, true );
    FUNC4( p_sys->thread, NULL );

    FUNC2( p_sys );
    FUNC3( p_sys->p_microdns );
    FUNC1( p_sys );
}