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
struct TYPE_3__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2( libvlc_instance_t *p_instance, const char *name )
{
    if( FUNC0( p_instance->p_libvlc_int, name ))
    {
        if( name != NULL )
            FUNC1("interface \"%s\" initialization failed", name );
        else
            FUNC1("default interface initialization failed");
        return -1;
    }
    return 0;
}