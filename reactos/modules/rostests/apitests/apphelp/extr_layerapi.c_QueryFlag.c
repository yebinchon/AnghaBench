
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wow64_ptr ;
typedef scalar_t__ ULONG_PTR ;
typedef int NTSTATUS ;
typedef int DWORD ;


 int KEY_WOW64_64KEY ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtCurrentProcess () ;
 int NtQueryInformationProcess (int ,int ,scalar_t__*,int,int *) ;
 int ProcessWow64Information ;
 int g_QueryFlag ;

__attribute__((used)) static DWORD QueryFlag(void)
{
    if (g_QueryFlag == 0xffffffff)
    {
        ULONG_PTR wow64_ptr = 0;
        NTSTATUS status = NtQueryInformationProcess(NtCurrentProcess(), ProcessWow64Information, &wow64_ptr, sizeof(wow64_ptr), ((void*)0));
        g_QueryFlag = (NT_SUCCESS(status) && wow64_ptr != 0) ? KEY_WOW64_64KEY : 0;
    }
    return g_QueryFlag;
}
