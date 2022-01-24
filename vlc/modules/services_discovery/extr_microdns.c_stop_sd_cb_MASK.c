#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct discovery_sys {int /*<<< orphan*/  stop; } ;
struct TYPE_3__ {struct discovery_sys* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct discovery_sys*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2( void *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    struct discovery_sys *p_sys = p_sd->p_sys;

    if( FUNC0( &p_sys->stop ) )
        return true;
    else
    {
        FUNC1( p_sys, p_sd, NULL );
        return false;
    }
}