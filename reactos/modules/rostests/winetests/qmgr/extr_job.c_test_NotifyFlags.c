
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ HRESULT ;


 scalar_t__ BG_NOTIFY_JOB_ERROR ;
 scalar_t__ BG_NOTIFY_JOB_TRANSFERRED ;
 scalar_t__ IBackgroundCopyJob_GetNotifyFlags (int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;

__attribute__((used)) static void test_NotifyFlags(void)
{
    ULONG flags;
    HRESULT hr;


    flags = 0;
    hr = IBackgroundCopyJob_GetNotifyFlags(test_job, &flags);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(flags == (BG_NOTIFY_JOB_ERROR | BG_NOTIFY_JOB_TRANSFERRED), "flags 0x%08x\n", flags);
}
