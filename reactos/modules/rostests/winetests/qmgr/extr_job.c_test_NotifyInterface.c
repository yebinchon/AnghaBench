
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IBackgroundCopyJob_GetNotifyInterface (int ,int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_job ;

__attribute__((used)) static void test_NotifyInterface(void)
{
    HRESULT hr;
    IUnknown *unk;

    unk = (IUnknown*)0xdeadbeef;
    hr = IBackgroundCopyJob_GetNotifyInterface(test_job, &unk);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(unk == ((void*)0), "got %p\n", unk);
}
