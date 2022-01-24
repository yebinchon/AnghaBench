#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  TimeInfoOrg ;
struct TYPE_6__ {int TimeAdjustment; int Enable; int TimeIncrement; } ;
struct TYPE_5__ {int TimeAdjustment; int Enable; } ;
typedef  int /*<<< orphan*/  SetTimeInfo ;
typedef  TYPE_1__ SYSTEM_SET_TIME_ADJUST_INFORMATION ;
typedef  TYPE_2__ SYSTEM_QUERY_TIME_ADJUST_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  GetTimeInfo ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_SYSTEMTIME_PRIVILEGE ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_INVALID_PARAMETER_2 ; 
 scalar_t__ STATUS_PRIVILEGE_NOT_HELD ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemTimeAdjustmentInformation ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static
void
FUNC8(void)
{
    SYSTEM_QUERY_TIME_ADJUST_INFORMATION TimeInfoOrg, GetTimeInfo;
    SYSTEM_SET_TIME_ADJUST_INFORMATION SetTimeInfo;
    NTSTATUS Status;
    ULONG ReturnLength;
    BOOLEAN PrivilegeEnabled;

    SetTimeInfo.TimeAdjustment = 0;
    SetTimeInfo.Enable = 0;

    /* Query original values */
    Status = FUNC1(SystemTimeAdjustmentInformation,
                                      &TimeInfoOrg,
                                      sizeof(TimeInfoOrg),
                                      &ReturnLength);

    /* Test without privilege */
    Status = FUNC2(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    FUNC6(Status, STATUS_PRIVILEGE_NOT_HELD);

    /* Get the required privilege */
    Status = FUNC3(SE_SYSTEMTIME_PRIVILEGE, TRUE, FALSE, &PrivilegeEnabled);
    if (!FUNC0(Status))
    {
        FUNC7("Cannot acquire SeSystemTimePrivilege\n");
        return;
    }

    /* Test wrong length */
    Status = FUNC2(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo) + 1);
    FUNC6(Status, STATUS_INFO_LENGTH_MISMATCH);

    /* Test both members 0 */
    Status = FUNC2(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    FUNC6(Status, STATUS_INVALID_PARAMETER_2);

    /* Set huge value */
    SetTimeInfo.TimeAdjustment = -1;
    SetTimeInfo.Enable = 0;
    Status = FUNC2(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    FUNC6(Status, STATUS_SUCCESS);

    /* Query the result */
    Status = FUNC1(SystemTimeAdjustmentInformation,
                                      &GetTimeInfo,
                                      sizeof(GetTimeInfo),
                                      &ReturnLength);
    FUNC6(Status, STATUS_SUCCESS);
    FUNC5(GetTimeInfo.TimeAdjustment, -1);
    FUNC5(GetTimeInfo.Enable, 0);

    /* set Enable to 1 */
    SetTimeInfo.TimeAdjustment = -1;
    SetTimeInfo.Enable = 1;
    Status = FUNC2(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    FUNC6(Status, STATUS_SUCCESS);

    /* Query the result */
    Status = FUNC1(SystemTimeAdjustmentInformation,
                                      &GetTimeInfo,
                                      sizeof(GetTimeInfo),
                                      &ReturnLength);
    FUNC6(Status, STATUS_SUCCESS);
    FUNC5(GetTimeInfo.TimeAdjustment, GetTimeInfo.TimeIncrement);
    FUNC5(GetTimeInfo.Enable, 1);

    /* Restore original values */
    SetTimeInfo.TimeAdjustment = TimeInfoOrg.TimeAdjustment;
    SetTimeInfo.Enable = TimeInfoOrg.Enable;
    Status = FUNC2(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    FUNC6(Status, STATUS_SUCCESS);

    Status = FUNC3(SE_SYSTEMTIME_PRIVILEGE, PrivilegeEnabled, FALSE, &PrivilegeEnabled);
    FUNC4(Status == STATUS_SUCCESS, "RtlAdjustPrivilege returned %lx\n", Status);
}