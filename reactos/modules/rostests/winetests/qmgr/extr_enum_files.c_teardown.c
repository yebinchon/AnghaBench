
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBackgroundCopyJob_Release (int ) ;
 int IBackgroundCopyManager_Release (int ) ;
 int IEnumBackgroundCopyFiles_Release (int ) ;
 int test_enumFiles ;
 int test_job ;
 int test_manager ;

__attribute__((used)) static void teardown(void)
{
    IEnumBackgroundCopyFiles_Release(test_enumFiles);
    IBackgroundCopyJob_Release(test_job);
    IBackgroundCopyManager_Release(test_manager);
}
