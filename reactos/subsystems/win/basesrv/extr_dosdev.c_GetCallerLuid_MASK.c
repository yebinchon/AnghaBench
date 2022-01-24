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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  TokenInformation ;
struct TYPE_3__ {int /*<<< orphan*/  AuthenticationId; } ;
typedef  TYPE_1__ TOKEN_STATISTICS ;
typedef  int /*<<< orphan*/ * PLUID ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int,scalar_t__*) ; 
 int READ_CONTROL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_NO_TOKEN ; 
 int TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenStatistics ; 

NTSTATUS
FUNC8(PLUID CallerLuid)
{
    NTSTATUS Status;
    HANDLE TokenHandle;
    ULONG ReturnLength;
    TOKEN_STATISTICS TokenInformation;

    /* We need an output buffer */
    if (CallerLuid == NULL)
    {
        return STATUS_INVALID_PARAMETER;
    }

    /* Open thread token */
    TokenHandle = 0;
    ReturnLength = 0;
    Status = FUNC5(FUNC3(),
                               READ_CONTROL | TOKEN_QUERY,
                               FALSE, &TokenHandle);
    /* If we fail, open process token */
    if (Status == STATUS_NO_TOKEN)
    {
        Status = FUNC4(FUNC2(),
                                    READ_CONTROL | TOKEN_QUERY,
                                    &TokenHandle);
    }

    /* In case of a success get caller LUID and copy it back */
    if (FUNC0(Status))
    {
        Status = FUNC6(TokenHandle,
                                         TokenStatistics,
                                         &TokenInformation,
                                         sizeof(TokenInformation),
                                         &ReturnLength);
        if (FUNC0(Status))
        {
            FUNC7(CallerLuid, &TokenInformation.AuthenticationId);
        }
    }

    /* Close token handle */
    if (TokenHandle != 0)
    {
        FUNC1(TokenHandle);
    }

    return Status;
}