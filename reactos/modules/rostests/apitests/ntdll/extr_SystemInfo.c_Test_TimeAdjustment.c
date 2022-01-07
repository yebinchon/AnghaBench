
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
typedef int TimeInfoOrg ;
struct TYPE_6__ {int TimeAdjustment; int Enable; int TimeIncrement; } ;
struct TYPE_5__ {int TimeAdjustment; int Enable; } ;
typedef int SetTimeInfo ;
typedef TYPE_1__ SYSTEM_SET_TIME_ADJUST_INFORMATION ;
typedef TYPE_2__ SYSTEM_QUERY_TIME_ADJUST_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef int GetTimeInfo ;
typedef int BOOLEAN ;


 int FALSE ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtQuerySystemInformation (int ,TYPE_2__*,int,int *) ;
 scalar_t__ NtSetSystemInformation (int ,TYPE_1__*,int) ;
 scalar_t__ RtlAdjustPrivilege (int ,int ,int ,int *) ;
 int SE_SYSTEMTIME_PRIVILEGE ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_INVALID_PARAMETER_2 ;
 scalar_t__ STATUS_PRIVILEGE_NOT_HELD ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemTimeAdjustmentInformation ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int ok_long (int,int) ;
 int ok_ntstatus (scalar_t__,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static
void
Test_TimeAdjustment(void)
{
    SYSTEM_QUERY_TIME_ADJUST_INFORMATION TimeInfoOrg, GetTimeInfo;
    SYSTEM_SET_TIME_ADJUST_INFORMATION SetTimeInfo;
    NTSTATUS Status;
    ULONG ReturnLength;
    BOOLEAN PrivilegeEnabled;

    SetTimeInfo.TimeAdjustment = 0;
    SetTimeInfo.Enable = 0;


    Status = NtQuerySystemInformation(SystemTimeAdjustmentInformation,
                                      &TimeInfoOrg,
                                      sizeof(TimeInfoOrg),
                                      &ReturnLength);


    Status = NtSetSystemInformation(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    ok_ntstatus(Status, STATUS_PRIVILEGE_NOT_HELD);


    Status = RtlAdjustPrivilege(SE_SYSTEMTIME_PRIVILEGE, TRUE, FALSE, &PrivilegeEnabled);
    if (!NT_SUCCESS(Status))
    {
        skip("Cannot acquire SeSystemTimePrivilege\n");
        return;
    }


    Status = NtSetSystemInformation(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo) + 1);
    ok_ntstatus(Status, STATUS_INFO_LENGTH_MISMATCH);


    Status = NtSetSystemInformation(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER_2);


    SetTimeInfo.TimeAdjustment = -1;
    SetTimeInfo.Enable = 0;
    Status = NtSetSystemInformation(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    ok_ntstatus(Status, STATUS_SUCCESS);


    Status = NtQuerySystemInformation(SystemTimeAdjustmentInformation,
                                      &GetTimeInfo,
                                      sizeof(GetTimeInfo),
                                      &ReturnLength);
    ok_ntstatus(Status, STATUS_SUCCESS);
    ok_long(GetTimeInfo.TimeAdjustment, -1);
    ok_long(GetTimeInfo.Enable, 0);


    SetTimeInfo.TimeAdjustment = -1;
    SetTimeInfo.Enable = 1;
    Status = NtSetSystemInformation(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    ok_ntstatus(Status, STATUS_SUCCESS);


    Status = NtQuerySystemInformation(SystemTimeAdjustmentInformation,
                                      &GetTimeInfo,
                                      sizeof(GetTimeInfo),
                                      &ReturnLength);
    ok_ntstatus(Status, STATUS_SUCCESS);
    ok_long(GetTimeInfo.TimeAdjustment, GetTimeInfo.TimeIncrement);
    ok_long(GetTimeInfo.Enable, 1);


    SetTimeInfo.TimeAdjustment = TimeInfoOrg.TimeAdjustment;
    SetTimeInfo.Enable = TimeInfoOrg.Enable;
    Status = NtSetSystemInformation(SystemTimeAdjustmentInformation,
                                    &SetTimeInfo,
                                    sizeof(SetTimeInfo));
    ok_ntstatus(Status, STATUS_SUCCESS);

    Status = RtlAdjustPrivilege(SE_SYSTEMTIME_PRIVILEGE, PrivilegeEnabled, FALSE, &PrivilegeEnabled);
    ok(Status == STATUS_SUCCESS, "RtlAdjustPrivilege returned %lx\n", Status);
}
