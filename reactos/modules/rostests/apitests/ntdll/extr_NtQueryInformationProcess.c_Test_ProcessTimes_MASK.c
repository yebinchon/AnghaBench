#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
typedef  int /*<<< orphan*/  Times2 ;
typedef  int /*<<< orphan*/  Times1 ;
struct TYPE_18__ {long long QuadPart; } ;
struct TYPE_17__ {scalar_t__ QuadPart; } ;
struct TYPE_15__ {scalar_t__ QuadPart; } ;
struct TYPE_14__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {scalar_t__ QuadPart; } ;
struct TYPE_12__ {long long QuadPart; } ;
struct TYPE_16__ {TYPE_4__ UserTime; TYPE_3__ KernelTime; TYPE_2__ ExitTime; TYPE_1__ CreateTime; } ;
typedef  TYPE_5__* PVOID ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_6__ LARGE_INTEGER ;
typedef  TYPE_5__ KERNEL_USER_TIMES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int,int*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  ProcessTimes ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,int) ; 
 scalar_t__ SPIN_TIME ; 
 int /*<<< orphan*/  STATUS_ACCESS_VIOLATION ; 
 int /*<<< orphan*/  STATUS_DATATYPE_MISALIGNMENT ; 
 int /*<<< orphan*/  STATUS_INFO_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 TYPE_8__ TestStartTime ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 

__attribute__((used)) static
void
FUNC9(void)
{
#define SPIN_TIME 1000000
    NTSTATUS Status;
    KERNEL_USER_TIMES Times1;
    KERNEL_USER_TIMES Times2;
    ULONG Length;
    LARGE_INTEGER Time1, Time2;

    /* Everything is NULL */
    Status = FUNC2(NULL,
                                       ProcessTimes,
                                       NULL,
                                       0,
                                       NULL);
    FUNC7(Status, STATUS_INFO_LENGTH_MISMATCH);

    /* Right size, invalid process */
    Status = FUNC2(NULL,
                                       ProcessTimes,
                                       NULL,
                                       sizeof(KERNEL_USER_TIMES),
                                       NULL);
    FUNC7(Status, STATUS_INVALID_HANDLE);

    /* Valid process, no buffer */
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       NULL,
                                       0,
                                       NULL);
    FUNC7(Status, STATUS_INFO_LENGTH_MISMATCH);

    /* Unaligned buffer, wrong size */
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       (PVOID)2,
                                       0,
                                       NULL);
    FUNC7(Status, STATUS_INFO_LENGTH_MISMATCH);

    /* Unaligned buffer, correct size */
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       (PVOID)2,
                                       sizeof(KERNEL_USER_TIMES),
                                       NULL);
    FUNC7(Status, STATUS_DATATYPE_MISALIGNMENT);

    /* Buffer too small */
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       NULL,
                                       sizeof(KERNEL_USER_TIMES) - 1,
                                       NULL);
    FUNC7(Status, STATUS_INFO_LENGTH_MISMATCH);

    /* Right buffer size but NULL pointer */
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       NULL,
                                       sizeof(KERNEL_USER_TIMES),
                                       NULL);
    FUNC7(Status, STATUS_ACCESS_VIOLATION);

    /* Buffer too large */
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       NULL,
                                       sizeof(KERNEL_USER_TIMES) + 1,
                                       NULL);
    FUNC7(Status, STATUS_INFO_LENGTH_MISMATCH);

    /* Buffer too small, ask for length */
    Length = 0x55555555;
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       NULL,
                                       sizeof(KERNEL_USER_TIMES) - 1,
                                       &Length);
    FUNC7(Status, STATUS_INFO_LENGTH_MISMATCH);
    FUNC6(Length, 0x55555555);

    Status = FUNC3(&Time1);
    FUNC7(Status, STATUS_SUCCESS);

    /* Do some busy waiting to increase UserTime */
    do
    {
        Status = FUNC3(&Time2);
        if (!FUNC0(Status))
        {
            FUNC5(0, "NtQuerySystemTime failed with %lx\n", Status);
            break;
        }
    } while (Time2.QuadPart - Time1.QuadPart < SPIN_TIME);

    /* Valid parameters, no return length */
    Status = FUNC3(&Time1);
    FUNC7(Status, STATUS_SUCCESS);

    FUNC4(&Times1, sizeof(Times1), 0x55);
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       &Times1,
                                       sizeof(KERNEL_USER_TIMES),
                                       NULL);
    FUNC7(Status, STATUS_SUCCESS);
    FUNC5(Times1.CreateTime.QuadPart < TestStartTime.QuadPart,
       "CreateTime is %I64u, expected < %I64u\n", Times1.CreateTime.QuadPart, TestStartTime.QuadPart);
    FUNC5(Times1.CreateTime.QuadPart > TestStartTime.QuadPart - 100000000LL,
       "CreateTime is %I64u, expected > %I64u\n", Times1.CreateTime.QuadPart, TestStartTime.QuadPart - 100000000LL);
    FUNC5(Times1.ExitTime.QuadPart == 0,
       "ExitTime is %I64u, expected 0\n", Times1.ExitTime.QuadPart);
    FUNC5(Times1.KernelTime.QuadPart != 0, "KernelTime is 0\n");
    FUNC5(Times1.UserTime.QuadPart != 0, "UserTime is 0\n");

    /* Do some busy waiting to increase UserTime */
    do
    {
        Status = FUNC3(&Time2);
        if (!FUNC0(Status))
        {
            FUNC5(0, "NtQuerySystemTime failed with %lx\n", Status);
            break;
        }
    } while (Time2.QuadPart - Time1.QuadPart < SPIN_TIME);

    /* Again, this time with a return length */
    Length = 0x55555555;
    FUNC4(&Times2, sizeof(Times2), 0x55);
    Status = FUNC2(FUNC1(),
                                       ProcessTimes,
                                       &Times2,
                                       sizeof(KERNEL_USER_TIMES),
                                       &Length);
    FUNC7(Status, STATUS_SUCCESS);
    FUNC6(Length, sizeof(KERNEL_USER_TIMES));
    FUNC5(Times1.CreateTime.QuadPart == Times2.CreateTime.QuadPart,
       "CreateTimes not equal: %I64u != %I64u\n", Times1.CreateTime.QuadPart, Times2.CreateTime.QuadPart);
    FUNC5(Times2.ExitTime.QuadPart == 0,
       "ExitTime is %I64u, expected 0\n", Times2.ExitTime.QuadPart);
    FUNC5(Times2.KernelTime.QuadPart != 0, "KernelTime is 0\n");
    FUNC5(Times2.UserTime.QuadPart != 0, "UserTime is 0\n");

    /* Compare the two sets of KernelTime/UserTime values */
    Status = FUNC3(&Time2);
    FUNC7(Status, STATUS_SUCCESS);
    /* Time values must have increased */
    FUNC5(Times2.KernelTime.QuadPart > Times1.KernelTime.QuadPart,
       "KernelTime values inconsistent. Expected %I64u > %I64u\n", Times2.KernelTime.QuadPart, Times1.KernelTime.QuadPart);
    FUNC5(Times2.UserTime.QuadPart > Times1.UserTime.QuadPart,
       "UserTime values inconsistent. Expected %I64u > %I64u\n", Times2.UserTime.QuadPart, Times1.UserTime.QuadPart);
    /* They can't have increased by more than wall clock time difference (we only have one thread) */
    FUNC5(Times2.KernelTime.QuadPart - Times1.KernelTime.QuadPart < Time2.QuadPart - Time1.QuadPart,
       "KernelTime values inconsistent. Expected %I64u - %I64u < %I64u\n",
       Times2.KernelTime.QuadPart, Times1.KernelTime.QuadPart, Time2.QuadPart - Time1.QuadPart);
    FUNC5(Times2.UserTime.QuadPart - Times1.UserTime.QuadPart < Time2.QuadPart - Time1.QuadPart,
       "UserTime values inconsistent. Expected %I64u - %I64u < %I64u\n",
       Times2.UserTime.QuadPart, Times1.UserTime.QuadPart, Time2.QuadPart - Time1.QuadPart);

    FUNC8("KernelTime1 = %I64u\n", Times1.KernelTime.QuadPart);
    FUNC8("KernelTime2 = %I64u\n", Times2.KernelTime.QuadPart);
    FUNC8("UserTime1 = %I64u\n", Times1.UserTime.QuadPart);
    FUNC8("UserTime2 = %I64u\n", Times2.UserTime.QuadPart);

    /* TODO: Test ExitTime on a terminated process */
#undef SPIN_TIME
}