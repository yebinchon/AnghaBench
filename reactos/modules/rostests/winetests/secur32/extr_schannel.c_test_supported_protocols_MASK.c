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
struct TYPE_3__ {unsigned int grbitProtocol; } ;
typedef  TYPE_1__ SecPkgCred_SupportedProtocols ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/  CredHandle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SECPKG_ATTR_SUPPORTED_PROTOCOLS ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  SP_PROT_SSL2_CLIENT ; 
 int /*<<< orphan*/  SP_PROT_SSL3_CLIENT ; 
 int /*<<< orphan*/  SP_PROT_TLS1_0_CLIENT ; 
 int /*<<< orphan*/  SP_PROT_TLS1_1_CLIENT ; 
 int /*<<< orphan*/  SP_PROT_TLS1_2_CLIENT ; 
 int /*<<< orphan*/  SP_PROT_TLS1_3_CLIENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(CredHandle *handle, unsigned exprots)
{
    SecPkgCred_SupportedProtocols protocols;
    SECURITY_STATUS status;

    status = FUNC0(handle, SECPKG_ATTR_SUPPORTED_PROTOCOLS, &protocols);
    FUNC2(status == SEC_E_OK, "QueryCredentialsAttributes failed: %08x\n", status);

    if(exprots)
        FUNC2(protocols.grbitProtocol == exprots, "protocols.grbitProtocol = %x, expected %x\n", protocols.grbitProtocol, exprots);

    FUNC3("Supported protocols:\n");

#define X(flag, name) do { if(protocols.grbitProtocol & flag) { trace(name "\n"); protocols.grbitProtocol &= ~flag; } }while(0)
    X(SP_PROT_SSL2_CLIENT, "SSL 2 client");
    X(SP_PROT_SSL3_CLIENT, "SSL 3 client");
    X(SP_PROT_TLS1_0_CLIENT, "TLS 1.0 client");
    X(SP_PROT_TLS1_1_CLIENT, "TLS 1.1 client");
    X(SP_PROT_TLS1_2_CLIENT, "TLS 1.2 client");
    X(SP_PROT_TLS1_3_CLIENT, "TLS 1.3 client");
#undef X

    if(protocols.grbitProtocol)
        FUNC3("Unknown flags: %x\n", protocols.grbitProtocol);
}