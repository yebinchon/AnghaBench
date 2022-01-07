
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyJobs_Reset (int ) ;
 scalar_t__ IEnumBackgroundCopyJobs_Skip (int ,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_enumJobsB ;
 int test_jobCountB ;

__attribute__((used)) static void test_Reset(void)
{
    HRESULT hres;

    hres = IEnumBackgroundCopyJobs_Skip(test_enumJobsB, test_jobCountB);
    ok(hres == S_OK, "Skip failed: %08x\n", hres);

    hres = IEnumBackgroundCopyJobs_Reset(test_enumJobsB);
    ok(hres == S_OK, "Reset failed: %08x\n", hres);

    hres = IEnumBackgroundCopyJobs_Skip(test_enumJobsB, test_jobCountB);
    ok(hres == S_OK, "Reset failed: %08x\n", hres);
}
