
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG ;
typedef int Times2 ;
typedef int Times1 ;
struct TYPE_18__ {long long QuadPart; } ;
struct TYPE_17__ {scalar_t__ QuadPart; } ;
struct TYPE_15__ {scalar_t__ QuadPart; } ;
struct TYPE_14__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {scalar_t__ QuadPart; } ;
struct TYPE_12__ {long long QuadPart; } ;
struct TYPE_16__ {TYPE_4__ UserTime; TYPE_3__ KernelTime; TYPE_2__ ExitTime; TYPE_1__ CreateTime; } ;
typedef TYPE_5__* PVOID ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_6__ LARGE_INTEGER ;
typedef TYPE_5__ KERNEL_USER_TIMES ;


 int NT_SUCCESS (scalar_t__) ;
 int * NtCurrentProcess () ;
 scalar_t__ NtQueryInformationProcess (int *,int ,TYPE_5__*,int,int*) ;
 scalar_t__ NtQuerySystemTime (TYPE_6__*) ;
 int ProcessTimes ;
 int RtlFillMemory (TYPE_5__*,int,int) ;
 scalar_t__ SPIN_TIME ;
 int STATUS_ACCESS_VIOLATION ;
 int STATUS_DATATYPE_MISALIGNMENT ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_HANDLE ;
 int STATUS_SUCCESS ;
 TYPE_8__ TestStartTime ;
 int ok (int,char*,...) ;
 int ok_dec (int,int) ;
 int ok_hex (scalar_t__,int ) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static
void
Test_ProcessTimes(void)
{

    NTSTATUS Status;
    KERNEL_USER_TIMES Times1;
    KERNEL_USER_TIMES Times2;
    ULONG Length;
    LARGE_INTEGER Time1, Time2;


    Status = NtQueryInformationProcess(((void*)0),
                                       ProcessTimes,
                                       ((void*)0),
                                       0,
                                       ((void*)0));
    ok_hex(Status, STATUS_INFO_LENGTH_MISMATCH);


    Status = NtQueryInformationProcess(((void*)0),
                                       ProcessTimes,
                                       ((void*)0),
                                       sizeof(KERNEL_USER_TIMES),
                                       ((void*)0));
    ok_hex(Status, STATUS_INVALID_HANDLE);


    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       ((void*)0),
                                       0,
                                       ((void*)0));
    ok_hex(Status, STATUS_INFO_LENGTH_MISMATCH);


    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       (PVOID)2,
                                       0,
                                       ((void*)0));
    ok_hex(Status, STATUS_INFO_LENGTH_MISMATCH);


    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       (PVOID)2,
                                       sizeof(KERNEL_USER_TIMES),
                                       ((void*)0));
    ok_hex(Status, STATUS_DATATYPE_MISALIGNMENT);


    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       ((void*)0),
                                       sizeof(KERNEL_USER_TIMES) - 1,
                                       ((void*)0));
    ok_hex(Status, STATUS_INFO_LENGTH_MISMATCH);


    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       ((void*)0),
                                       sizeof(KERNEL_USER_TIMES),
                                       ((void*)0));
    ok_hex(Status, STATUS_ACCESS_VIOLATION);


    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       ((void*)0),
                                       sizeof(KERNEL_USER_TIMES) + 1,
                                       ((void*)0));
    ok_hex(Status, STATUS_INFO_LENGTH_MISMATCH);


    Length = 0x55555555;
    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       ((void*)0),
                                       sizeof(KERNEL_USER_TIMES) - 1,
                                       &Length);
    ok_hex(Status, STATUS_INFO_LENGTH_MISMATCH);
    ok_dec(Length, 0x55555555);

    Status = NtQuerySystemTime(&Time1);
    ok_hex(Status, STATUS_SUCCESS);


    do
    {
        Status = NtQuerySystemTime(&Time2);
        if (!NT_SUCCESS(Status))
        {
            ok(0, "NtQuerySystemTime failed with %lx\n", Status);
            break;
        }
    } while (Time2.QuadPart - Time1.QuadPart < 1000000);


    Status = NtQuerySystemTime(&Time1);
    ok_hex(Status, STATUS_SUCCESS);

    RtlFillMemory(&Times1, sizeof(Times1), 0x55);
    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       &Times1,
                                       sizeof(KERNEL_USER_TIMES),
                                       ((void*)0));
    ok_hex(Status, STATUS_SUCCESS);
    ok(Times1.CreateTime.QuadPart < TestStartTime.QuadPart,
       "CreateTime is %I64u, expected < %I64u\n", Times1.CreateTime.QuadPart, TestStartTime.QuadPart);
    ok(Times1.CreateTime.QuadPart > TestStartTime.QuadPart - 100000000LL,
       "CreateTime is %I64u, expected > %I64u\n", Times1.CreateTime.QuadPart, TestStartTime.QuadPart - 100000000LL);
    ok(Times1.ExitTime.QuadPart == 0,
       "ExitTime is %I64u, expected 0\n", Times1.ExitTime.QuadPart);
    ok(Times1.KernelTime.QuadPart != 0, "KernelTime is 0\n");
    ok(Times1.UserTime.QuadPart != 0, "UserTime is 0\n");


    do
    {
        Status = NtQuerySystemTime(&Time2);
        if (!NT_SUCCESS(Status))
        {
            ok(0, "NtQuerySystemTime failed with %lx\n", Status);
            break;
        }
    } while (Time2.QuadPart - Time1.QuadPart < 1000000);


    Length = 0x55555555;
    RtlFillMemory(&Times2, sizeof(Times2), 0x55);
    Status = NtQueryInformationProcess(NtCurrentProcess(),
                                       ProcessTimes,
                                       &Times2,
                                       sizeof(KERNEL_USER_TIMES),
                                       &Length);
    ok_hex(Status, STATUS_SUCCESS);
    ok_dec(Length, sizeof(KERNEL_USER_TIMES));
    ok(Times1.CreateTime.QuadPart == Times2.CreateTime.QuadPart,
       "CreateTimes not equal: %I64u != %I64u\n", Times1.CreateTime.QuadPart, Times2.CreateTime.QuadPart);
    ok(Times2.ExitTime.QuadPart == 0,
       "ExitTime is %I64u, expected 0\n", Times2.ExitTime.QuadPart);
    ok(Times2.KernelTime.QuadPart != 0, "KernelTime is 0\n");
    ok(Times2.UserTime.QuadPart != 0, "UserTime is 0\n");


    Status = NtQuerySystemTime(&Time2);
    ok_hex(Status, STATUS_SUCCESS);

    ok(Times2.KernelTime.QuadPart > Times1.KernelTime.QuadPart,
       "KernelTime values inconsistent. Expected %I64u > %I64u\n", Times2.KernelTime.QuadPart, Times1.KernelTime.QuadPart);
    ok(Times2.UserTime.QuadPart > Times1.UserTime.QuadPart,
       "UserTime values inconsistent. Expected %I64u > %I64u\n", Times2.UserTime.QuadPart, Times1.UserTime.QuadPart);

    ok(Times2.KernelTime.QuadPart - Times1.KernelTime.QuadPart < Time2.QuadPart - Time1.QuadPart,
       "KernelTime values inconsistent. Expected %I64u - %I64u < %I64u\n",
       Times2.KernelTime.QuadPart, Times1.KernelTime.QuadPart, Time2.QuadPart - Time1.QuadPart);
    ok(Times2.UserTime.QuadPart - Times1.UserTime.QuadPart < Time2.QuadPart - Time1.QuadPart,
       "UserTime values inconsistent. Expected %I64u - %I64u < %I64u\n",
       Times2.UserTime.QuadPart, Times1.UserTime.QuadPart, Time2.QuadPart - Time1.QuadPart);

    trace("KernelTime1 = %I64u\n", Times1.KernelTime.QuadPart);
    trace("KernelTime2 = %I64u\n", Times2.KernelTime.QuadPart);
    trace("UserTime1 = %I64u\n", Times1.UserTime.QuadPart);
    trace("UserTime2 = %I64u\n", Times2.UserTime.QuadPart);



}
