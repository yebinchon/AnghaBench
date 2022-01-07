
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ IFileDialogEventsImpl ;
typedef int IFileDialogEvents ;
typedef int IFileDialog ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_INVALIDARG ;
 int * IFileDialogEvents_Constructor () ;
 int IFileDialogEvents_Release (int *) ;
 int IFileDialog_Advise (int *,int *,int*) ;
 int IFileDialog_Unadvise (int *,int) ;
 int S_OK ;
 int ensure_zero_events (TYPE_1__*) ;
 TYPE_1__* impl_from_IFileDialogEvents (int *) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_advise_helper(IFileDialog *pfd)
{
    IFileDialogEventsImpl *pfdeimpl;
    IFileDialogEvents *pfde;
    DWORD cookie[10];
    UINT i;
    HRESULT hr;

    pfde = IFileDialogEvents_Constructor();
    pfdeimpl = impl_from_IFileDialogEvents(pfde);


    if (0)
    {
        hr = IFileDialog_Advise(pfd, ((void*)0), ((void*)0));
        ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
        hr = IFileDialog_Advise(pfd, pfde, ((void*)0));
        ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    }
    hr = IFileDialog_Advise(pfd, ((void*)0), &cookie[0]);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    ok(pfdeimpl->ref == 1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    hr = IFileDialog_Unadvise(pfd, 0);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    for(i = 0; i < 10; i++) {
        hr = IFileDialog_Advise(pfd, pfde, &cookie[i]);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        ok(cookie[i] == i+cookie[0], "Got cookie: %d\n", cookie[i]);
    }
    ok(pfdeimpl->ref == 10+1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    for(i = 3; i < 7; i++) {
        hr = IFileDialog_Unadvise(pfd, cookie[i]);
        ok(hr == S_OK, "got 0x%08x\n", hr);
    }
    ok(pfdeimpl->ref == 6+1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    for(i = 0; i < 3; i++) {
        hr = IFileDialog_Unadvise(pfd, cookie[i]);
        ok(hr == S_OK, "got 0x%08x\n", hr);
    }
    ok(pfdeimpl->ref == 3+1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    for(i = 7; i < 10; i++) {
        hr = IFileDialog_Unadvise(pfd, cookie[i]);
        ok(hr == S_OK, "got 0x%08x\n", hr);
    }
    ok(pfdeimpl->ref == 1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    hr = IFileDialog_Unadvise(pfd, cookie[9]+1);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    ok(pfdeimpl->ref == 1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    hr = IFileDialog_Advise(pfd, pfde, &cookie[0]);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(cookie[0] >= 1, "got cookie: %d\n", cookie[0]);
    ok(pfdeimpl->ref == 1+1, "got ref %d\n", pfdeimpl->ref);
    ensure_zero_events(pfdeimpl);

    hr = IFileDialog_Unadvise(pfd, cookie[0]);

    if(0)
    {


        IFileDialog_Unadvise(pfd, cookie[0]);
    }


    IFileDialogEvents_Release(pfde);
}
