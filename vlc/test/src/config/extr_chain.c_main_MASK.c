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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5( void )
{
    FUNC4( "Testing config chain escaping\n" );
    FUNC2();
    FUNC4( "Testing config chain un-escaping\n" );
    FUNC3();
    FUNC4( "Testing config_ChainCreate()\n" );
    FUNC0();
    FUNC4( "Testing config_ChainDuplicate()\n" );
    FUNC1();

    return 0;
}