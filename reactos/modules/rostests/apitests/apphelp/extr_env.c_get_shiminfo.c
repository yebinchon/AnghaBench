
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ShimDataSize; TYPE_3__* pShimData; int AppCompatInfo; int AppCompatFlagsUser; int AppCompatFlags; } ;
typedef TYPE_1__ test_RemoteShimInfo ;
typedef int peb ;
typedef int pbi ;
typedef int mbi ;
typedef int ULONG ;
struct TYPE_15__ {int RegionSize; int member_0; } ;
struct TYPE_14__ {int * pShimData; int AppCompatInfo; int AppCompatFlagsUser; int AppCompatFlags; int member_0; } ;
struct TYPE_13__ {int * PebBaseAddress; int member_0; } ;
typedef int SIZE_T ;
typedef TYPE_2__ PROCESS_BASIC_INFORMATION ;
typedef TYPE_3__ PEB ;
typedef int NTSTATUS ;
typedef TYPE_4__ MEMORY_BASIC_INFORMATION ;
typedef int LPCVOID ;
typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtQueryInformationProcess (int ,int ,TYPE_2__*,int,int *) ;
 int ProcessBasicInformation ;
 int TRUE ;
 int VirtualQueryEx (int ,int ,TYPE_4__*,int) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int,...) ;
 scalar_t__ readproc (int ,int *,TYPE_3__*,int) ;

__attribute__((used)) static BOOL get_shiminfo(HANDLE proc, test_RemoteShimInfo* info)
{
    PROCESS_BASIC_INFORMATION pbi = { 0 };
    ULONG sizeOut = 0;
    NTSTATUS status = NtQueryInformationProcess(proc, ProcessBasicInformation, &pbi, sizeof(pbi), &sizeOut);
    ok(NT_SUCCESS(status), "Expected NtQI to succeed, but failed with: %x\n", status);
    memset(info, 0, sizeof(*info));
    if (NT_SUCCESS(status))
    {
        PEB peb = { 0 };
        if (readproc(proc, pbi.PebBaseAddress, &peb, sizeof(peb)))
        {
            MEMORY_BASIC_INFORMATION mbi = { 0 };
            SIZE_T dwRead;

            info->AppCompatFlags = peb.AppCompatFlags;
            info->AppCompatFlagsUser = peb.AppCompatFlagsUser;
            info->AppCompatInfo = peb.AppCompatInfo;
            if (peb.pShimData == ((void*)0))
                return TRUE;

            dwRead = VirtualQueryEx(proc, (LPCVOID)peb.pShimData, &mbi, sizeof(mbi));
            ok(dwRead == sizeof(mbi), "Expected VQE to return %u, got %lu\n", sizeof(mbi), dwRead);
            if (dwRead == sizeof(mbi) || peb.pShimData == ((void*)0))
            {
                info->ShimDataSize = mbi.RegionSize;
                info->pShimData = malloc(mbi.RegionSize);
                if (readproc(proc, peb.pShimData, info->pShimData, mbi.RegionSize))
                    return TRUE;
                free(info->pShimData);
                info->pShimData = ((void*)0);
            }
        }
    }
    return FALSE;
}
