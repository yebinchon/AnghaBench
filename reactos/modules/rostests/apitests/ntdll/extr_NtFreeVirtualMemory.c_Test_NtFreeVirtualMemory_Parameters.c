
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ULONG ;
typedef scalar_t__ NTSTATUS ;


 unsigned long MEM_DECOMMIT ;
 unsigned long MEM_RELEASE ;
 scalar_t__ NtFreeVirtualMemory (int *,int *,int *,unsigned long) ;
 scalar_t__ STATUS_INVALID_PARAMETER_4 ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void Test_NtFreeVirtualMemory_Parameters(void)
{
    NTSTATUS Status;
    ULONG FreeType;
    int i;




    Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), 0ul);
    ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);



    for (i = 0; i < 32; ++i)
    {
        FreeType = 1 << i;
        if (FreeType == MEM_DECOMMIT || FreeType == MEM_RELEASE)
            continue;

        Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), FreeType);
        ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    }


    Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), ~(MEM_DECOMMIT | MEM_RELEASE));
    ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), ~MEM_DECOMMIT);
    ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), ~MEM_RELEASE);
    ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), ~0ul);
    ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);


    Status = NtFreeVirtualMemory(((void*)0), ((void*)0), ((void*)0), MEM_DECOMMIT | MEM_RELEASE);
    ok(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
}
