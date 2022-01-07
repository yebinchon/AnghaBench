
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ ULONG ;
typedef int LDAP ;


 int LDAP_SCOPE_SUBTREE ;
 scalar_t__ LDAP_SERVER_DOWN ;
 scalar_t__ LDAP_UNAVAILABLE ;
 scalar_t__ ldap_search_extW (int *,char*,int ,char*,int *,int ,int *,int *,scalar_t__,int ,scalar_t__*) ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_ldap_search_extW( LDAP *ld )
{
    ULONG ret, message, timelimit;
    WCHAR base[] = {0}, filter[] = {'o','u','=','*',0};

    timelimit = 20;
    ret = ldap_search_extW( ld, base, LDAP_SCOPE_SUBTREE, filter, ((void*)0), 0, ((void*)0), ((void*)0), timelimit, 0, &message );
    if (ret == LDAP_SERVER_DOWN || ret == LDAP_UNAVAILABLE)
    {
        skip("test server can't be reached\n");
        return;
    }
    ok( !ret, "ldap_search_extW failed 0x%08x\n", ret );

    timelimit = 0;
    ret = ldap_search_extW( ld, base, LDAP_SCOPE_SUBTREE, filter, ((void*)0), 0, ((void*)0), ((void*)0), timelimit, 0, &message );
    ok( !ret, "ldap_search_extW failed 0x%08x\n", ret );
}
