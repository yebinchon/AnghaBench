
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyJobs_GetCount (int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int test_enumJobsA ;
 int test_enumJobsB ;

__attribute__((used)) static void test_GetCount(void)
{
    HRESULT hres;
    ULONG jobCountA, jobCountB;

    hres = IEnumBackgroundCopyJobs_GetCount(test_enumJobsA, &jobCountA);
    ok(hres == S_OK, "GetCount failed: %08x\n", hres);

    hres = IEnumBackgroundCopyJobs_GetCount(test_enumJobsB, &jobCountB);
    ok(hres == S_OK, "GetCount failed: %08x\n", hres);

    ok(jobCountB == jobCountA + 1, "Got incorrect count\n");
}
