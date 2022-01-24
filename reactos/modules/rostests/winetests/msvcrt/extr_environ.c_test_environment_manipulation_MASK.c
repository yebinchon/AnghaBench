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
 int FUNC0 (char*) ; 
 char* a_very_long_env_string ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC2( FUNC0("cat=") == 0, "_putenv failed on deletion of nonexistent environment variable\n" );
    FUNC2( FUNC0("cat=dog") == 0, "failed setting cat=dog\n" );
    FUNC2( FUNC3(FUNC1("cat"), "dog") == 0, "getenv did not return 'dog'\n" );
    FUNC2( FUNC0("cat=") == 0, "failed deleting cat\n" );

    FUNC2( FUNC0("=") == -1, "should not accept '=' as input\n" );
    FUNC2( FUNC0("=dog") == -1, "should not accept '=dog' as input\n" );
    FUNC2( FUNC0(a_very_long_env_string) == 0, "_putenv failed for long environment string\n");

    FUNC2( FUNC1("nonexistent") == NULL, "getenv should fail with nonexistent var name\n" );
}