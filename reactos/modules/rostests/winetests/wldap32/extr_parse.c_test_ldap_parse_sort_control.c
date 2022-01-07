
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct l_timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef unsigned int ULONG ;
struct TYPE_3__ {char* sk_attrtype; int sk_reverseorder; int * sk_matchruleoid; } ;
typedef TYPE_1__ LDAPSortKeyA ;
typedef int LDAPMessage ;
typedef int LDAPControlA ;
typedef int LDAP ;


 int FALSE ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 unsigned int LDAP_CONTROL_NOT_FOUND ;
 unsigned int LDAP_PARAM_ERROR ;
 int LDAP_SCOPE_ONELEVEL ;
 unsigned int LDAP_SERVER_DOWN ;
 unsigned int LDAP_TIMEOUT ;
 int ldap_control_freeA (int *) ;
 int ldap_controls_freeA (int **) ;
 unsigned int ldap_create_sort_controlA (int *,TYPE_1__**,int ,int **) ;
 unsigned int ldap_parse_resultA (int *,int *,unsigned int*,int *,int *,int *,int ***,int) ;
 unsigned int ldap_parse_sort_controlA (int *,int **,unsigned int*,int *) ;
 unsigned int ldap_search_ext_sA (int *,char*,int ,char*,int *,int ,int **,int *,struct l_timeval*,int,int **) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_ldap_parse_sort_control( LDAP *ld )
{
    ULONG ret, result;
    LDAPSortKeyA *sortkeys[2], key;
    LDAPControlA *sort, *ctrls[2], **server_ctrls;
    LDAPMessage *res = ((void*)0);
    struct l_timeval timeout;

    key.sk_attrtype = (char *)"ou";
    key.sk_matchruleoid = ((void*)0);
    key.sk_reverseorder = FALSE;

    sortkeys[0] = &key;
    sortkeys[1] = ((void*)0);
    ret = ldap_create_sort_controlA( ld, sortkeys, 0, &sort );
    ok( !ret, "ldap_create_sort_controlA failed 0x%x\n", ret );

    ctrls[0] = sort;
    ctrls[1] = ((void*)0);
    timeout.tv_sec = 20;
    timeout.tv_usec = 0;
    ret = ldap_search_ext_sA( ld, (char *)"", LDAP_SCOPE_ONELEVEL, (char *)"(ou=*)", ((void*)0), 0, ctrls, ((void*)0), &timeout, 10, &res );
    if (ret == LDAP_SERVER_DOWN || ret == LDAP_TIMEOUT)
    {
        skip("test server can't be reached\n");
        ldap_control_freeA( sort );
        return;
    }
    ok( !ret, "ldap_search_ext_sA failed 0x%x\n", ret );
    ok( res != ((void*)0), "expected res != NULL\n" );

    if (GetProcAddress(GetModuleHandleA("wldap32.dll"), "ber_init"))
    {
        ret = ldap_parse_resultA( ((void*)0), res, &result, ((void*)0), ((void*)0), ((void*)0), &server_ctrls, 1 );
        ok( ret == LDAP_PARAM_ERROR, "ldap_parse_resultA failed 0x%x\n", ret );
    }
    else
        win_skip("Test would crash on older wldap32 versions\n");

    result = ~0u;
    ret = ldap_parse_resultA( ld, res, &result, ((void*)0), ((void*)0), ((void*)0), &server_ctrls, 1 );
    ok( !ret, "ldap_parse_resultA failed 0x%x\n", ret );
    ok( !result, "got 0x%x expected 0\n", result );

    ret = ldap_parse_sort_controlA( ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
    ok( ret == LDAP_PARAM_ERROR, "ldap_parse_sort_controlA failed 0x%d\n", ret );

    ret = ldap_parse_sort_controlA( ld, ((void*)0), ((void*)0), ((void*)0) );
    ok( ret == LDAP_CONTROL_NOT_FOUND, "ldap_parse_sort_controlA failed 0x%x\n", ret );

    ret = ldap_parse_sort_controlA( ld, ((void*)0), &result, ((void*)0) );
    ok( ret == LDAP_CONTROL_NOT_FOUND, "ldap_parse_sort_controlA failed 0x%x\n", ret );

    ret = ldap_parse_sort_controlA( ld, server_ctrls, &result, ((void*)0) );
    ok( ret == LDAP_CONTROL_NOT_FOUND, "ldap_parse_sort_controlA failed 0x%x\n", ret );

    ldap_control_freeA( sort );
    ldap_controls_freeA( server_ctrls );
}
