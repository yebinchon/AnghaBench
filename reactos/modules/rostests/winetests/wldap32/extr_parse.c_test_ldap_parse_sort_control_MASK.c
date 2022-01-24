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
struct l_timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  unsigned int ULONG ;
struct TYPE_3__ {char* sk_attrtype; int /*<<< orphan*/  sk_reverseorder; int /*<<< orphan*/ * sk_matchruleoid; } ;
typedef  TYPE_1__ LDAPSortKeyA ;
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  int /*<<< orphan*/  LDAPControlA ;
typedef  int /*<<< orphan*/  LDAP ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int LDAP_CONTROL_NOT_FOUND ; 
 unsigned int LDAP_PARAM_ERROR ; 
 int /*<<< orphan*/  LDAP_SCOPE_ONELEVEL ; 
 unsigned int LDAP_SERVER_DOWN ; 
 unsigned int LDAP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,struct l_timeval*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( LDAP *ld )
{
    ULONG ret, result;
    LDAPSortKeyA *sortkeys[2], key;
    LDAPControlA *sort, *ctrls[2], **server_ctrls;
    LDAPMessage *res = NULL;
    struct l_timeval timeout;

    key.sk_attrtype = (char *)"ou";
    key.sk_matchruleoid = NULL;
    key.sk_reverseorder = FALSE;

    sortkeys[0] = &key;
    sortkeys[1] = NULL;
    ret = FUNC4( ld, sortkeys, 0, &sort );
    FUNC8( !ret, "ldap_create_sort_controlA failed 0x%x\n", ret );

    ctrls[0] = sort;
    ctrls[1] = NULL;
    timeout.tv_sec = 20;
    timeout.tv_usec = 0;
    ret = FUNC7( ld, (char *)"", LDAP_SCOPE_ONELEVEL, (char *)"(ou=*)", NULL, 0, ctrls, NULL, &timeout, 10, &res );
    if (ret == LDAP_SERVER_DOWN || ret == LDAP_TIMEOUT)
    {
        FUNC9("test server can't be reached\n");
        FUNC2( sort );
        return;
    }
    FUNC8( !ret, "ldap_search_ext_sA failed 0x%x\n", ret );
    FUNC8( res != NULL, "expected res != NULL\n" );

    if (FUNC1(FUNC0("wldap32.dll"), "ber_init"))
    {
        ret = FUNC5( NULL, res, &result, NULL, NULL, NULL, &server_ctrls, 1 );
        FUNC8( ret == LDAP_PARAM_ERROR, "ldap_parse_resultA failed 0x%x\n", ret );
    }
    else
        FUNC10("Test would crash on older wldap32 versions\n");

    result = ~0u;
    ret = FUNC5( ld, res, &result, NULL, NULL, NULL, &server_ctrls, 1 );
    FUNC8( !ret, "ldap_parse_resultA failed 0x%x\n", ret );
    FUNC8( !result, "got 0x%x expected 0\n", result );

    ret = FUNC6( NULL, NULL, NULL, NULL );
    FUNC8( ret == LDAP_PARAM_ERROR, "ldap_parse_sort_controlA failed 0x%d\n", ret );

    ret = FUNC6( ld, NULL, NULL, NULL );
    FUNC8( ret == LDAP_CONTROL_NOT_FOUND, "ldap_parse_sort_controlA failed 0x%x\n", ret );

    ret = FUNC6( ld, NULL, &result, NULL );
    FUNC8( ret == LDAP_CONTROL_NOT_FOUND, "ldap_parse_sort_controlA failed 0x%x\n", ret );

    ret = FUNC6( ld, server_ctrls, &result, NULL );
    FUNC8( ret == LDAP_CONTROL_NOT_FOUND, "ldap_parse_sort_controlA failed 0x%x\n", ret );

    FUNC2( sort );
    FUNC3( server_ctrls );
}