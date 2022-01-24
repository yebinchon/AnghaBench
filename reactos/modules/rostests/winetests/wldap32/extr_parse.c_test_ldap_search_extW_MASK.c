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
typedef  char WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LDAP ;

/* Variables and functions */
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 scalar_t__ LDAP_SERVER_DOWN ; 
 scalar_t__ LDAP_UNAVAILABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3( LDAP *ld )
{
    ULONG ret, message, timelimit;
    WCHAR base[] = {0}, filter[] = {'o','u','=','*',0};

    timelimit = 20;
    ret = FUNC0( ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0, NULL, NULL, timelimit, 0, &message );
    if (ret == LDAP_SERVER_DOWN || ret == LDAP_UNAVAILABLE)
    {
        FUNC2("test server can't be reached\n");
        return;
    }
    FUNC1( !ret, "ldap_search_extW failed 0x%08x\n", ret );

    timelimit = 0;
    ret = FUNC0( ld, base, LDAP_SCOPE_SUBTREE, filter, NULL, 0, NULL, NULL, timelimit, 0, &message );
    FUNC1( !ret, "ldap_search_extW failed 0x%08x\n", ret );
}