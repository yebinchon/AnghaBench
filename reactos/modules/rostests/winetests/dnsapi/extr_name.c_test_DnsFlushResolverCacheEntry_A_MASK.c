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
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;
    DWORD err;

    FUNC2( 0xdeadbeef );
    ret = FUNC0( NULL );
    err = FUNC1();
    FUNC3( !ret, "got %d\n", ret );
    FUNC3( err == 0xdeadbeef, "got %u\n", err );

    ret = FUNC0( "localhost" );
    FUNC3( ret, "got %d\n", ret );

    ret = FUNC0( "nxdomain.test.winehq.org" );
    FUNC3( ret, "got %d\n", ret );
}