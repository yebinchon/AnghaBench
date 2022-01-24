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
typedef  int /*<<< orphan*/  a ;
typedef  int ULONG ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  IoCompletionBasicInformation ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*) ; 

__attribute__((used)) static ULONG FUNC2(HANDLE h)
{
    NTSTATUS res;
    ULONG a, req;

    res = FUNC1( h, IoCompletionBasicInformation, &a, sizeof(a), &req );
    FUNC0( res == STATUS_SUCCESS, "NtQueryIoCompletion failed: %x\n", res );
    if (res != STATUS_SUCCESS) return -1;
    FUNC0( req == sizeof(a), "Unexpected response size: %x\n", req );
    return a;
}