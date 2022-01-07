
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int LDAP ;


 int LDAP_OPT_PROTOCOL_VERSION ;
 scalar_t__ LDAP_VERSION3 ;
 scalar_t__ ldap_get_optionW (int *,int ,scalar_t__*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_ldap_get_optionW( LDAP *ld )
{
    ULONG ret, version;

    ret = ldap_get_optionW( ld, LDAP_OPT_PROTOCOL_VERSION, &version );
    ok( !ret, "ldap_get_optionW failed 0x%08x\n", ret );
    ok( version == LDAP_VERSION3, "got %u\n", version );
}
