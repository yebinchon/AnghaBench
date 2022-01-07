
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sfvc ;
typedef int * ULONG ;
struct TYPE_4__ {int cbSize; int * pshf; } ;
typedef TYPE_1__ SFV_CREATE ;
typedef int IUnknown ;
typedef int IShellView ;
typedef int IShellFolder ;
typedef int * HRESULT ;


 int * E_INVALIDARG ;
 int * E_UNEXPECTED ;
 int IID_CDefView ;
 int IShellFolder_Release (int *) ;
 int * IShellView_QueryInterface (int *,int *,void**) ;
 int * IShellView_Release (int *) ;
 int IUnknown_Release (int *) ;
 int * SHCreateShellFolderView (TYPE_1__*,int **) ;
 int * SHGetDesktopFolder (int **) ;
 int * S_OK ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int *) ;

__attribute__((used)) static void test_SHCreateShellFolderView(void)
{
    IShellFolder *desktop;
    IShellView *psv;
    SFV_CREATE sfvc;
    ULONG refCount;
    IUnknown *unk;
    HRESULT hr;

    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    if (0)
    {

        SHCreateShellFolderView(((void*)0), ((void*)0));
    }

    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderView(((void*)0), &psv);
    ok(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);

    memset(&sfvc, 0, sizeof(sfvc));
    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderView(&sfvc, &psv);
    ok(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);

    memset(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc) - 1;
    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderView(&sfvc, &psv);
    ok(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);

    memset(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc) + 1;
    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderView(&sfvc, &psv);
    ok(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);

if (0)
{

    memset(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc);
    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderView(&sfvc, &psv);
    ok(hr == E_UNEXPECTED, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);
}
    memset(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc) - 1;
    sfvc.pshf = desktop;
    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderView(&sfvc, &psv);
    ok(hr == E_INVALIDARG, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);

    memset(&sfvc, 0, sizeof(sfvc));
    sfvc.cbSize = sizeof(sfvc);
    sfvc.pshf = desktop;
    psv = ((void*)0);
    hr = SHCreateShellFolderView(&sfvc, &psv);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(psv != ((void*)0), "psv = %p\n", psv);

    hr = IShellView_QueryInterface(psv, &IID_CDefView, (void **)&unk);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(unk == (IUnknown *)psv, "got %p\n", unk);
    IUnknown_Release(unk);

    refCount = IShellView_Release(psv);
    ok(refCount == 0, "refCount = %u\n", refCount);

    IShellFolder_Release(desktop);
}
