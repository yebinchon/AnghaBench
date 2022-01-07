
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int completed; TYPE_1__ IExplorerBrowserEvents_iface; } ;
typedef TYPE_1__ IExplorerBrowserEvents ;
typedef int IExplorerBrowser ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_INVALIDARG ;
 int IExplorerBrowser_Advise (int *,TYPE_1__*,int*) ;
 int IExplorerBrowser_Destroy (int *) ;
 int IExplorerBrowser_Release (int *) ;
 int IExplorerBrowser_Unadvise (int *,int) ;
 int S_OK ;
 TYPE_2__ ebev ;
 int ebevents ;
 int ebrowser_browse_to_desktop (int *) ;
 int ebrowser_initialize (int *) ;
 int ebrowser_instantiate (int **) ;
 int ok (int,char*,int,...) ;
 int process_msgs () ;

__attribute__((used)) static void test_Advise(void)
{
    IExplorerBrowser *peb;
    IExplorerBrowserEvents *pebe;
    DWORD cookies[10];
    HRESULT hr;
    UINT i, ref;


    ebev.IExplorerBrowserEvents_iface.lpVtbl = &ebevents;
    pebe = &ebev.IExplorerBrowserEvents_iface;

    ebrowser_instantiate(&peb);

    if(0)
    {

        IExplorerBrowser_Advise(peb, pebe, ((void*)0));
        IExplorerBrowser_Advise(peb, ((void*)0), &cookies[0]);
    }



    hr = IExplorerBrowser_Unadvise(peb, 11);
    ok(hr == E_INVALIDARG, "got (0x%08x)\n", hr);


    for(i = 0; i < 5; i++)
    {
        hr = IExplorerBrowser_Advise(peb, pebe, &cookies[i]);
        ok(hr == S_OK, "got (0x%08x)\n", hr);
    }

    ebrowser_initialize(peb);


    for(i = 5; i < 10; i++)
    {
        hr = IExplorerBrowser_Advise(peb, pebe, &cookies[i]);
        ok(hr == S_OK, "got (0x%08x)\n", hr);
    }

    ok(ebev.ref == 10, "Got %d\n", ebev.ref);

    ebev.completed = 0;
    ebrowser_browse_to_desktop(peb);
    process_msgs();
    ok(ebev.completed == 10, "Got %d\n", ebev.completed);


    for(i = 4; i < 8; i++)
    {
        hr = IExplorerBrowser_Unadvise(peb, cookies[i]);
        ok(hr == S_OK, "got (0x%08x)\n", hr);
    }

    ebev.completed = 0;
    ebrowser_browse_to_desktop(peb);
    process_msgs();
    ok(ebev.completed == 6, "Got %d\n", ebev.completed);

    if(0)
    {


        IExplorerBrowser_Unadvise(peb, cookies[5]);
    }


    for(i = 0; i < 10; i++)
    {
        if(i<4||i>7)
        {
            hr = IExplorerBrowser_Unadvise(peb, cookies[i]);
            ok(hr == S_OK, "%d: got (0x%08x)\n", i, hr);
        }
    }

    ok(ebev.ref == 0, "Got %d\n", ebev.ref);

    ebev.completed = 0;
    ebrowser_browse_to_desktop(peb);
    process_msgs();
    ok(ebev.completed == 0, "Got %d\n", ebev.completed);


    hr = IExplorerBrowser_Advise(peb, pebe, &cookies[0]);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(ebev.ref == 1, "Got %d\n", ebev.ref);

    hr = IExplorerBrowser_Destroy(peb);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(ebev.ref == 0, "Got %d\n", ebev.ref);

    ref = IExplorerBrowser_Release(peb);
    ok(!ref, "Got %d\n", ref);
}
