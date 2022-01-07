
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyJobs_Skip (int ,scalar_t__) ;
 scalar_t__ S_FALSE ;
 int ok (int,char*,scalar_t__) ;
 int test_enumJobsB ;
 scalar_t__ test_jobCountB ;

__attribute__((used)) static void test_Skip_offEnd(void)
{
    HRESULT hres;

    hres = IEnumBackgroundCopyJobs_Skip(test_enumJobsB, test_jobCountB + 1);
    ok(hres == S_FALSE, "Skip expected end of list: %08x\n", hres);
}
