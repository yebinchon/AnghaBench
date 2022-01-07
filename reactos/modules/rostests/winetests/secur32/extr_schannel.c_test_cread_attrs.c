
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int grbitEnabledProtocols; } ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_1__ SCHANNEL_CRED ;
typedef int CredHandle ;


 scalar_t__ AcquireCredentialsHandleA (int *,int ,int ,int *,TYPE_1__*,int *,int *,int *,int *) ;
 int FreeCredentialsHandle (int *) ;
 scalar_t__ QueryCredentialsAttributesA (int *,int ,int *) ;
 int SECPKG_ATTR_SUPPORTED_ALGS ;
 int SECPKG_ATTR_SUPPORTED_PROTOCOLS ;
 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_INTERNAL_ERROR ;
 scalar_t__ SEC_E_OK ;
 int SP_PROT_TLS1_CLIENT ;
 int init_cred (TYPE_1__*) ;
 int ok (int,char*,scalar_t__) ;
 int test_supported_algs (int *) ;
 int test_supported_protocols (int *,int ) ;
 int unisp_name_a ;

__attribute__((used)) static void test_cread_attrs(void)
{
    SCHANNEL_CRED schannel_cred;
    SECURITY_STATUS status;
    CredHandle cred;

    status = AcquireCredentialsHandleA(((void*)0), unisp_name_a, SECPKG_CRED_OUTBOUND,
            ((void*)0), ((void*)0), ((void*)0), ((void*)0), &cred, ((void*)0));
    ok(status == SEC_E_OK, "AcquireCredentialsHandleA failed: %x\n", status);

    test_supported_protocols(&cred, 0);
    test_supported_algs(&cred);

    status = QueryCredentialsAttributesA(&cred, SECPKG_ATTR_SUPPORTED_PROTOCOLS, ((void*)0));
    ok(status == SEC_E_INTERNAL_ERROR, "QueryCredentialsAttributes failed: %08x, expected SEC_E_INTERNAL_ERROR\n", status);

    status = QueryCredentialsAttributesA(&cred, SECPKG_ATTR_SUPPORTED_ALGS, ((void*)0));
    ok(status == SEC_E_INTERNAL_ERROR, "QueryCredentialsAttributes failed: %08x, expected SEC_E_INTERNAL_ERROR\n", status);

    FreeCredentialsHandle(&cred);

    init_cred(&schannel_cred);
    schannel_cred.grbitEnabledProtocols = SP_PROT_TLS1_CLIENT;
    status = AcquireCredentialsHandleA(((void*)0), unisp_name_a, SECPKG_CRED_OUTBOUND,
            ((void*)0), &schannel_cred, ((void*)0), ((void*)0), &cred, ((void*)0));
    ok(status == SEC_E_OK, "AcquireCredentialsHandleA failed: %x\n", status);

    test_supported_protocols(&cred, SP_PROT_TLS1_CLIENT);
    test_supported_algs(&cred);

    FreeCredentialsHandle(&cred);
}
