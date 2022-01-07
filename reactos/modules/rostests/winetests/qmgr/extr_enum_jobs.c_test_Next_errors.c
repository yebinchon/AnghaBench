
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IEnumBackgroundCopyJobs_Next (int ,int,int **,int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_enumJobsB ;

__attribute__((used)) static void test_Next_errors(void)
{
    HRESULT hres;
    IBackgroundCopyJob *jobs[2];


    hres = IEnumBackgroundCopyJobs_Next(test_enumJobsB, 2, jobs, ((void*)0));
    ok(hres != S_OK, "Invalid call to Next succeeded: %08x\n", hres);
}
