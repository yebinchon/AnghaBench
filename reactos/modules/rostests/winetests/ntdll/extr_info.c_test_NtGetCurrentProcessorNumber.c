
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tbi ;
typedef int pbi ;
typedef int old_thread_mask ;
typedef int old_process_mask ;
typedef int new_mask ;
typedef int ULONG ;
struct TYPE_9__ {int AffinityMask; } ;
struct TYPE_8__ {int dwNumberOfProcessors; } ;
struct TYPE_7__ {int AffinityMask; } ;
typedef TYPE_1__ THREAD_BASIC_INFORMATION ;
typedef TYPE_2__ SYSTEM_INFO ;
typedef TYPE_3__ PROCESS_BASIC_INFORMATION ;
typedef int NTSTATUS ;
typedef int DWORD_PTR ;


 int GetCurrentProcess () ;
 int GetCurrentThread () ;
 int GetSystemInfo (TYPE_2__*) ;
 int ProcessAffinityMask ;
 int ProcessBasicInformation ;
 int STATUS_SUCCESS ;
 int ThreadAffinityMask ;
 int ThreadBasicInformation ;
 int ok (int,char*,int,...) ;
 int pNtGetCurrentProcessorNumber () ;
 int pNtQueryInformationProcess (int ,int ,TYPE_3__*,int,int *) ;
 int pNtQueryInformationThread (int ,int ,TYPE_1__*,int,int *) ;
 int pNtSetInformationProcess (int ,int ,int*,int) ;
 int pNtSetInformationThread (int ,int ,int*,int) ;
 int trace (char*,int,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_NtGetCurrentProcessorNumber(void)
{
    NTSTATUS status;
    SYSTEM_INFO si;
    PROCESS_BASIC_INFORMATION pbi;
    THREAD_BASIC_INFORMATION tbi;
    DWORD_PTR old_process_mask;
    DWORD_PTR old_thread_mask;
    DWORD_PTR new_mask;
    ULONG current_cpu;
    ULONG i;

    if (!pNtGetCurrentProcessorNumber) {
        win_skip("NtGetCurrentProcessorNumber not available\n");
        return;
    }

    GetSystemInfo(&si);
    current_cpu = pNtGetCurrentProcessorNumber();
    trace("dwNumberOfProcessors: %d, current processor: %d\n", si.dwNumberOfProcessors, current_cpu);

    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessBasicInformation, &pbi, sizeof(pbi), ((void*)0));
    old_process_mask = pbi.AffinityMask;
    ok(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    status = pNtQueryInformationThread(GetCurrentThread(), ThreadBasicInformation, &tbi, sizeof(tbi), ((void*)0));
    old_thread_mask = tbi.AffinityMask;
    ok(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);


    new_mask = (1 << si.dwNumberOfProcessors) - 1;
    status = pNtSetInformationProcess(GetCurrentProcess(), ProcessAffinityMask, &new_mask, sizeof(new_mask));
    ok(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    for (i = 0; i < si.dwNumberOfProcessors; i++)
    {
        new_mask = 1 << i;
        status = pNtSetInformationThread(GetCurrentThread(), ThreadAffinityMask, &new_mask, sizeof(new_mask));
        ok(status == STATUS_SUCCESS, "%d: got 0x%x (expected STATUS_SUCCESS)\n", i, status);

        status = pNtQueryInformationThread(GetCurrentThread(), ThreadBasicInformation, &tbi, sizeof(tbi), ((void*)0));
        ok(status == STATUS_SUCCESS, "%d: got 0x%x (expected STATUS_SUCCESS)\n", i, status);

        current_cpu = pNtGetCurrentProcessorNumber();
        ok((current_cpu == i), "%d (new_mask 0x%lx): running on processor %d (AffinityMask: 0x%lx)\n",
                                i, new_mask, current_cpu, tbi.AffinityMask);
    }


    status = pNtSetInformationProcess(GetCurrentProcess(), ProcessAffinityMask, &old_process_mask, sizeof(old_process_mask));
    ok(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    status = pNtSetInformationThread(GetCurrentThread(), ThreadAffinityMask, &old_thread_mask, sizeof(old_thread_mask));
    ok(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);
}
