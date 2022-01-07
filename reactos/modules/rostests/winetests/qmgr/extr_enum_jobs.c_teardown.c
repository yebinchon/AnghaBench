
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBackgroundCopyJob_Release (int *) ;
 int IBackgroundCopyManager_Release (int *) ;
 int IEnumBackgroundCopyJobs_Release (int *) ;
 int * test_enumJobsA ;
 int * test_enumJobsB ;
 int * test_jobA ;
 int * test_jobB ;
 int * test_manager ;

__attribute__((used)) static void teardown(void)
{
    if (test_enumJobsB)
        IEnumBackgroundCopyJobs_Release(test_enumJobsB);
    test_enumJobsB = ((void*)0);
    if (test_jobB)
        IBackgroundCopyJob_Release(test_jobB);
    test_jobB = ((void*)0);
    if (test_enumJobsA)
        IEnumBackgroundCopyJobs_Release(test_enumJobsA);
    test_enumJobsA = ((void*)0);
    if (test_jobA)
        IBackgroundCopyJob_Release(test_jobA);
    test_jobA = ((void*)0);
    if (test_manager)
        IBackgroundCopyManager_Release(test_manager);
    test_manager = ((void*)0);
}
