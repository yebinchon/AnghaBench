
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int grbitProtocol; } ;
typedef TYPE_1__ SecPkgCred_SupportedProtocols ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int CredHandle ;


 scalar_t__ QueryCredentialsAttributesA (int *,int ,TYPE_1__*) ;
 int SECPKG_ATTR_SUPPORTED_PROTOCOLS ;
 scalar_t__ SEC_E_OK ;
 int SP_PROT_SSL2_CLIENT ;
 int SP_PROT_SSL3_CLIENT ;
 int SP_PROT_TLS1_0_CLIENT ;
 int SP_PROT_TLS1_1_CLIENT ;
 int SP_PROT_TLS1_2_CLIENT ;
 int SP_PROT_TLS1_3_CLIENT ;
 int X (int ,char*) ;
 int ok (int,char*,unsigned int,...) ;
 int trace (char*,...) ;

__attribute__((used)) static void test_supported_protocols(CredHandle *handle, unsigned exprots)
{
    SecPkgCred_SupportedProtocols protocols;
    SECURITY_STATUS status;

    status = QueryCredentialsAttributesA(handle, SECPKG_ATTR_SUPPORTED_PROTOCOLS, &protocols);
    ok(status == SEC_E_OK, "QueryCredentialsAttributes failed: %08x\n", status);

    if(exprots)
        ok(protocols.grbitProtocol == exprots, "protocols.grbitProtocol = %x, expected %x\n", protocols.grbitProtocol, exprots);

    trace("Supported protocols:\n");


    do { if(protocols.grbitProtocol & SP_PROT_SSL2_CLIENT) { trace("SSL 2 client" "\n"); protocols.grbitProtocol &= ~SP_PROT_SSL2_CLIENT; } }while(0);
    do { if(protocols.grbitProtocol & SP_PROT_SSL3_CLIENT) { trace("SSL 3 client" "\n"); protocols.grbitProtocol &= ~SP_PROT_SSL3_CLIENT; } }while(0);
    do { if(protocols.grbitProtocol & SP_PROT_TLS1_0_CLIENT) { trace("TLS 1.0 client" "\n"); protocols.grbitProtocol &= ~SP_PROT_TLS1_0_CLIENT; } }while(0);
    do { if(protocols.grbitProtocol & SP_PROT_TLS1_1_CLIENT) { trace("TLS 1.1 client" "\n"); protocols.grbitProtocol &= ~SP_PROT_TLS1_1_CLIENT; } }while(0);
    do { if(protocols.grbitProtocol & SP_PROT_TLS1_2_CLIENT) { trace("TLS 1.2 client" "\n"); protocols.grbitProtocol &= ~SP_PROT_TLS1_2_CLIENT; } }while(0);
    do { if(protocols.grbitProtocol & SP_PROT_TLS1_3_CLIENT) { trace("TLS 1.3 client" "\n"); protocols.grbitProtocol &= ~SP_PROT_TLS1_3_CLIENT; } }while(0);


    if(protocols.grbitProtocol)
        trace("Unknown flags: %x\n", protocols.grbitProtocol);
}
