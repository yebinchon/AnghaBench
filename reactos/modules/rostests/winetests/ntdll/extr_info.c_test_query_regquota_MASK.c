#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  srqi ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  SYSTEM_REGISTRY_QUOTA_INFORMATION ;
typedef  int NTSTATUS ;

/* Variables and functions */
 int STATUS_INFO_LENGTH_MISMATCH ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemRegistryQuotaInformation ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void FUNC2(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    SYSTEM_REGISTRY_QUOTA_INFORMATION srqi;

    status = FUNC1(SystemRegistryQuotaInformation, &srqi, 0, &ReturnLength);
    FUNC0( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = FUNC1(SystemRegistryQuotaInformation, &srqi, sizeof(srqi), &ReturnLength);
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC0( sizeof(srqi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);

    status = FUNC1(SystemRegistryQuotaInformation, &srqi, sizeof(srqi) + 2, &ReturnLength);
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC0( sizeof(srqi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);
}