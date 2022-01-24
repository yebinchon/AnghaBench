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
typedef  int /*<<< orphan*/  sbi ;
typedef  int ULONG ;
struct TYPE_3__ {int NumberOfProcessors; } ;
typedef  TYPE_1__ SYSTEM_BASIC_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 scalar_t__ STATUS_ACCESS_VIOLATION ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_INVALID_INFO_CLASS ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_NOT_IMPLEMENTED ; 
 scalar_t__ STATUS_SUCCESS ; 
 int SystemBasicInformation ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    SYSTEM_BASIC_INFORMATION sbi;

    /* This test also covers some basic parameter testing that should be the same for 
     * every information class
    */

    /* Use a nonexistent info class */
    FUNC2("Check nonexistent info class\n");
    status = FUNC1(-1, NULL, 0, NULL);
    FUNC0( status == STATUS_INVALID_INFO_CLASS || status == STATUS_NOT_IMPLEMENTED /* vista */,
        "Expected STATUS_INVALID_INFO_CLASS or STATUS_NOT_IMPLEMENTED, got %08x\n", status);

    /* Use an existing class but with a zero-length buffer */
    FUNC2("Check zero-length buffer\n");
    status = FUNC1(SystemBasicInformation, NULL, 0, NULL);
    FUNC0( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    /* Use an existing class, correct length but no SystemInformation buffer */
    FUNC2("Check no SystemInformation buffer\n");
    status = FUNC1(SystemBasicInformation, NULL, sizeof(sbi), NULL);
    FUNC0( status == STATUS_ACCESS_VIOLATION || status == STATUS_INVALID_PARAMETER /* vista */,
        "Expected STATUS_ACCESS_VIOLATION or STATUS_INVALID_PARAMETER, got %08x\n", status);

    /* Use an existing class, correct length, a pointer to a buffer but no ReturnLength pointer */
    FUNC2("Check no ReturnLength pointer\n");
    status = FUNC1(SystemBasicInformation, &sbi, sizeof(sbi), NULL);
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);

    /* Check a too large buffer size */
    FUNC2("Check a too large buffer size\n");
    status = FUNC1(SystemBasicInformation, &sbi, sizeof(sbi) * 2, &ReturnLength);
    FUNC0( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    /* Finally some correct calls */
    FUNC2("Check with correct parameters\n");
    status = FUNC1(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength);
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC0( sizeof(sbi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);

    /* Check if we have some return values */
    FUNC2("Number of Processors : %d\n", sbi.NumberOfProcessors);
    FUNC0( sbi.NumberOfProcessors > 0, "Expected more than 0 processors, got %d\n", sbi.NumberOfProcessors);
}