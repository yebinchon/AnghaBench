
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmdID; } ;
typedef TYPE_1__ OLECMD ;
typedef int IShellView ;
typedef int IShellFolder ;
typedef int IOleCommandTarget ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOINTERFACE ;
 int IID_IOleCommandTarget ;
 int IID_IShellView ;
 scalar_t__ IOleCommandTarget_Exec (int *,int *,int ,int ,int *,int *) ;
 scalar_t__ IOleCommandTarget_QueryStatus (int *,int *,int,TYPE_1__*,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ IShellFolder_CreateViewObject (int *,int *,int *,void**) ;
 int IShellFolder_Release (int *) ;
 scalar_t__ IShellView_QueryInterface (int *,int *,void**) ;
 int IShellView_Release (int *) ;
 scalar_t__ OLECMDERR_E_UNKNOWNGROUP ;
 scalar_t__ SHGetDesktopFolder (int **) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_IOleCommandTarget(void)
{
    IShellFolder *psf_desktop;
    IShellView *psv;
    IOleCommandTarget *poct;
    HRESULT hr;

    hr = SHGetDesktopFolder(&psf_desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellFolder_CreateViewObject(psf_desktop, ((void*)0), &IID_IShellView, (void**)&psv);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    if(SUCCEEDED(hr))
    {
        hr = IShellView_QueryInterface(psv, &IID_IOleCommandTarget, (void**)&poct);
        ok(hr == S_OK || broken(hr == E_NOINTERFACE) , "Got 0x%08x\n", hr);
        if(SUCCEEDED(hr))
        {
            OLECMD oc;

            hr = IOleCommandTarget_QueryStatus(poct, ((void*)0), 0, ((void*)0), ((void*)0));
            ok(hr == E_INVALIDARG, "Got 0x%08x\n", hr);

            oc.cmdID = 1;
            hr = IOleCommandTarget_QueryStatus(poct, ((void*)0), 0, &oc, ((void*)0));
            ok(hr == OLECMDERR_E_UNKNOWNGROUP, "Got 0x%08x\n", hr);

            oc.cmdID = 1;
            hr = IOleCommandTarget_QueryStatus(poct, ((void*)0), 1, &oc, ((void*)0));
            ok(hr == OLECMDERR_E_UNKNOWNGROUP, "Got 0x%08x\n", hr);

            hr = IOleCommandTarget_Exec(poct, ((void*)0), 0, 0, ((void*)0), ((void*)0));
            ok(hr == OLECMDERR_E_UNKNOWNGROUP, "Got 0x%08x\n", hr);

            IOleCommandTarget_Release(poct);
        }

        IShellView_Release(psv);
    }

    IShellFolder_Release(psf_desktop);
}
