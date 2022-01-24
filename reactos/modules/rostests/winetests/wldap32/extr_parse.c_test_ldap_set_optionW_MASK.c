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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LDAP ;

/* Variables and functions */
 void* LDAP_OPT_OFF ; 
 int /*<<< orphan*/  LDAP_OPT_REFERRALS ; 
 scalar_t__ LDAP_PARAM_ERROR ; 
 scalar_t__ LDAP_SERVER_DOWN ; 
 scalar_t__ LDAP_UNAVAILABLE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( LDAP *ld )
{
    ULONG ret, oldvalue;

    ret = FUNC1( ld, LDAP_OPT_REFERRALS, &oldvalue );
    if (ret == LDAP_SERVER_DOWN || ret == LDAP_UNAVAILABLE)
    {
        FUNC4("test server can't be reached\n");
        return;
    }

    ret = FUNC2( ld, LDAP_OPT_REFERRALS, LDAP_OPT_OFF );
    FUNC3( !ret || FUNC0(ret == LDAP_PARAM_ERROR) /* nt4, win2k */, "ldap_set_optionW failed 0x%08x\n", ret );

    ret = FUNC2( ld, LDAP_OPT_REFERRALS, (void *)&oldvalue );
    FUNC3( !ret, "ldap_set_optionW failed 0x%08x\n", ret );
}