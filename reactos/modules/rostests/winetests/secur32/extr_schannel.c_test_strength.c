
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; int dwMaximumCipherStrength; int dwMinimumCipherStrength; } ;
typedef TYPE_1__ SecPkgCred_CipherStrengths ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int PCredHandle ;


 int GetLastError () ;
 scalar_t__ QueryCredentialsAttributesA (int ,int ,TYPE_1__*) ;
 int SECPKG_ATTR_CIPHER_STRENGTHS ;
 scalar_t__ SEC_E_OK ;
 int ok (int,char*,...) ;
 int trace (char*,int ,int ) ;

__attribute__((used)) static void test_strength(PCredHandle handle)
{
    SecPkgCred_CipherStrengths strength = {-1,-1};
    SECURITY_STATUS st;

    st = QueryCredentialsAttributesA(handle, SECPKG_ATTR_CIPHER_STRENGTHS, &strength);
    ok(st == SEC_E_OK, "QueryCredentialsAttributesA failed: %u\n", GetLastError());
    ok(strength.dwMinimumCipherStrength, "dwMinimumCipherStrength not changed\n");
    ok(strength.dwMaximumCipherStrength, "dwMaximumCipherStrength not changed\n");
    trace("strength %d - %d\n", strength.dwMinimumCipherStrength, strength.dwMaximumCipherStrength);
}
