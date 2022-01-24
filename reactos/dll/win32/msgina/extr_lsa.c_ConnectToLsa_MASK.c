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
struct TYPE_3__ {int /*<<< orphan*/  AuthenticationPackage; int /*<<< orphan*/ * LsaHandle; } ;
typedef  TYPE_1__* PGINA_CONTEXT ;
typedef  int /*<<< orphan*/  PANSI_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LSA_STRING ;
typedef  int /*<<< orphan*/  LSA_OPERATIONAL_MODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* MSV1_0_PACKAGE_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC5(
    PGINA_CONTEXT pgContext)
{
    LSA_STRING LogonProcessName;
    LSA_STRING PackageName;
    LSA_OPERATIONAL_MODE SecurityMode = 0;
    NTSTATUS Status;

    /* We are already connected to the LSA */
    if (pgContext->LsaHandle != NULL)
        return STATUS_SUCCESS;

    /* Connect to the LSA server */
    FUNC4((PANSI_STRING)&LogonProcessName,
                      "MSGINA");

    Status = FUNC2(&LogonProcessName,
                                     &pgContext->LsaHandle,
                                     &SecurityMode);
    if (!FUNC3(Status))
    {
        FUNC0("LsaRegisterLogonProcess failed (Status 0x%08lx)\n", Status);
        return Status;
    }

    /* Get the authentication package */
    FUNC4((PANSI_STRING)&PackageName,
                      MSV1_0_PACKAGE_NAME);

    Status = FUNC1(pgContext->LsaHandle,
                                            &PackageName,
                                            &pgContext->AuthenticationPackage);
    if (!FUNC3(Status))
    {
        FUNC0("LsaLookupAuthenticationPackage failed (Status 0x%08lx)\n", Status);
    }

    return Status;
}