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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UOI_NAME ; 
 int /*<<< orphan*/  UOI_TYPE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC3( HANDLE obj )
{
    char buffer[100];
    DWORD size;

    FUNC1( buffer, "foobar" );
    if (!FUNC0( obj, UOI_NAME, buffer, sizeof(buffer), &size ))
        FUNC2( "could not get info for %p\n", obj );
    else
        FUNC2( "obj %p name '%s'\n", obj, buffer );
    FUNC1( buffer, "foobar" );
    if (!FUNC0( obj, UOI_TYPE, buffer, sizeof(buffer), &size ))
        FUNC2( "could not get type for %p\n", obj );
    else
        FUNC2( "obj %p type '%s'\n", obj, buffer );
}