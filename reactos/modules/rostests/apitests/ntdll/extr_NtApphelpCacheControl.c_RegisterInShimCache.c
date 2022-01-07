
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int szPath ;
typedef int WCHAR ;
struct TYPE_4__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int ApphelpCacheServiceUpdate ;
 int CallCacheControl (TYPE_1__*,int ,int ) ;
 int DbgPrint (char*) ;
 int FALSE ;
 int GetModuleFileNameW (int *,int *,int) ;
 int MAX_PATH ;
 int NT_SUCCESS (int ) ;
 int RtlDosPathNameToNtPathName_U (int *,TYPE_1__*,int *,int *) ;
 int RtlFreeHeap (int ,int ,int ) ;
 int RtlGetProcessHeap () ;
 int TRUE ;

__attribute__((used)) static BOOLEAN RegisterInShimCache(BOOLEAN WithMapping)
{
    WCHAR szPath[MAX_PATH];
    UNICODE_STRING ntPath;
    BOOLEAN Result;
    NTSTATUS Status;
    GetModuleFileNameW(((void*)0), szPath, sizeof(szPath) / sizeof(szPath[0]));
    Result = RtlDosPathNameToNtPathName_U(szPath, &ntPath, ((void*)0), ((void*)0));
    if (!Result)
    {
        DbgPrint("RegisterInShimCache: RtlDosPathNameToNtPathName_U failed\n");
        return FALSE;
    }

    Status = CallCacheControl(&ntPath, WithMapping, ApphelpCacheServiceUpdate);
    if (!NT_SUCCESS(Status))
    {
        DbgPrint("RegisterInShimCache: CallCacheControl failed\n");
        RtlFreeHeap(RtlGetProcessHeap(), 0, ntPath.Buffer);
        return FALSE;
    }
    RtlFreeHeap(RtlGetProcessHeap(), 0, ntPath.Buffer);
    return TRUE;
}
