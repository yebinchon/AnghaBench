
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int a ;
typedef int ULONG ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;


 int IoCompletionBasicInformation ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,int) ;
 scalar_t__ pNtQueryIoCompletion (int ,int ,int*,int,int*) ;

__attribute__((used)) static ULONG get_pending_msgs(HANDLE h)
{
    NTSTATUS res;
    ULONG a, req;

    res = pNtQueryIoCompletion( h, IoCompletionBasicInformation, &a, sizeof(a), &req );
    ok( res == STATUS_SUCCESS, "NtQueryIoCompletion failed: %x\n", res );
    if (res != STATUS_SUCCESS) return -1;
    ok( req == sizeof(a), "Unexpected response size: %x\n", req );
    return a;
}
