
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;


 int GetProcessHeap () ;
 int ** HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int **) ;
 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IEnumBackgroundCopyJobs_Next (int ,int,int **,int*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int test_enumJobsB ;
 int test_jobCountB ;

__attribute__((used)) static void test_Next_walkList_2(void)
{
    HRESULT hres;
    IBackgroundCopyJob **jobs;
    ULONG fetched;
    ULONG i;

    jobs = HeapAlloc(GetProcessHeap(), 0, test_jobCountB * sizeof *jobs);
    for (i = 0; i < test_jobCountB; i++)
        jobs[i] = ((void*)0);

    fetched = 0;
    hres = IEnumBackgroundCopyJobs_Next(test_enumJobsB, test_jobCountB, jobs, &fetched);
    ok(hres == S_OK, "Next failed: %08x\n", hres);
    ok(fetched == test_jobCountB, "Next returned the incorrect number of jobs: %08x\n", hres);

    for (i = 0; i < test_jobCountB; i++)
    {
        ok(jobs[i] != ((void*)0), "Next returned NULL\n");
        if (jobs[i])
            IBackgroundCopyJob_Release(jobs[i]);
    }

    HeapFree(GetProcessHeap(), 0, jobs);
}
