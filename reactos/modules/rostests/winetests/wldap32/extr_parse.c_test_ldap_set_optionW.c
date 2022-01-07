
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int LDAP ;


 void* LDAP_OPT_OFF ;
 int LDAP_OPT_REFERRALS ;
 scalar_t__ LDAP_PARAM_ERROR ;
 scalar_t__ LDAP_SERVER_DOWN ;
 scalar_t__ LDAP_UNAVAILABLE ;
 scalar_t__ broken (int) ;
 scalar_t__ ldap_get_optionW (int *,int ,scalar_t__*) ;
 scalar_t__ ldap_set_optionW (int *,int ,void*) ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_ldap_set_optionW( LDAP *ld )
{
    ULONG ret, oldvalue;

    ret = ldap_get_optionW( ld, LDAP_OPT_REFERRALS, &oldvalue );
    if (ret == LDAP_SERVER_DOWN || ret == LDAP_UNAVAILABLE)
    {
        skip("test server can't be reached\n");
        return;
    }

    ret = ldap_set_optionW( ld, LDAP_OPT_REFERRALS, LDAP_OPT_OFF );
    ok( !ret || broken(ret == LDAP_PARAM_ERROR) , "ldap_set_optionW failed 0x%08x\n", ret );

    ret = ldap_set_optionW( ld, LDAP_OPT_REFERRALS, (void *)&oldvalue );
    ok( !ret, "ldap_set_optionW failed 0x%08x\n", ret );
}
