#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  grbitEnabledProtocols; } ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  TYPE_1__ SCHANNEL_CRED ;
typedef  int /*<<< orphan*/  CredHandle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECPKG_ATTR_SUPPORTED_ALGS ; 
 int /*<<< orphan*/  SECPKG_ATTR_SUPPORTED_PROTOCOLS ; 
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 scalar_t__ SEC_E_INTERNAL_ERROR ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  SP_PROT_TLS1_CLIENT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unisp_name_a ; 

__attribute__((used)) static void FUNC7(void)
{
    SCHANNEL_CRED schannel_cred;
    SECURITY_STATUS status;
    CredHandle cred;

    status = FUNC0(NULL, unisp_name_a, SECPKG_CRED_OUTBOUND,
            NULL, NULL, NULL, NULL, &cred, NULL);
    FUNC4(status == SEC_E_OK, "AcquireCredentialsHandleA failed: %x\n", status);

    FUNC6(&cred, 0);
    FUNC5(&cred);

    status = FUNC2(&cred, SECPKG_ATTR_SUPPORTED_PROTOCOLS, NULL);
    FUNC4(status == SEC_E_INTERNAL_ERROR, "QueryCredentialsAttributes failed: %08x, expected SEC_E_INTERNAL_ERROR\n", status);

    status = FUNC2(&cred, SECPKG_ATTR_SUPPORTED_ALGS, NULL);
    FUNC4(status == SEC_E_INTERNAL_ERROR, "QueryCredentialsAttributes failed: %08x, expected SEC_E_INTERNAL_ERROR\n", status);

    FUNC1(&cred);

    FUNC3(&schannel_cred);
    schannel_cred.grbitEnabledProtocols = SP_PROT_TLS1_CLIENT;
    status = FUNC0(NULL, unisp_name_a, SECPKG_CRED_OUTBOUND,
            NULL, &schannel_cred, NULL, NULL, &cred, NULL);
    FUNC4(status == SEC_E_OK, "AcquireCredentialsHandleA failed: %x\n", status);

    FUNC6(&cred, SP_PROT_TLS1_CLIENT);
    FUNC5(&cred);

    FUNC1(&cred);
}