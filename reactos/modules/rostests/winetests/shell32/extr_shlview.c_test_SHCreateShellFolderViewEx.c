
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int csfv ;
typedef int * ULONG ;
struct TYPE_4__ {int cbSize; int * pshf; } ;
typedef int IUnknown ;
typedef int IShellView ;
typedef int IShellFolder ;
typedef int * HRESULT ;
typedef TYPE_1__ CSFV ;


 int * E_UNEXPECTED ;
 int IID_CDefView ;
 int IShellFolder_Release (int *) ;
 int * IShellView_QueryInterface (int *,int *,void**) ;
 int * IShellView_Release (int *) ;
 int IUnknown_Release (int *) ;
 int * SHCreateShellFolderViewEx (TYPE_1__*,int **) ;
 int * SHGetDesktopFolder (int **) ;
 int * S_OK ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int *) ;

__attribute__((used)) static void test_SHCreateShellFolderViewEx(void)
{
    IShellFolder *desktop;
    IShellView *psv;
    ULONG refCount;
    IUnknown *unk;
    HRESULT hr;
    CSFV csfv;

    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    if (0)
    {

        SHCreateShellFolderViewEx(((void*)0), ((void*)0));
        SHCreateShellFolderViewEx(((void*)0), &psv);
        SHCreateShellFolderViewEx(&csfv, ((void*)0));
    }

    memset(&csfv, 0, sizeof(csfv));
    csfv.pshf = desktop;
    psv = ((void*)0);
    hr = SHCreateShellFolderViewEx(&csfv, &psv);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(psv != ((void*)0), "psv = %p\n", psv);

    hr = IShellView_QueryInterface(psv, &IID_CDefView, (void **)&unk);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(unk == (IUnknown *)psv, "got %p\n", unk);
    IUnknown_Release(unk);

    refCount = IShellView_Release(psv);
    ok(refCount == 0, "refCount = %u\n", refCount);

if (0)
{

    memset(&csfv, 0, sizeof(csfv));
    csfv.pshf = ((void*)0);
    psv = (void *)0xdeadbeef;
    hr = SHCreateShellFolderViewEx(&csfv, &psv);
    ok(hr == E_UNEXPECTED, "Got 0x%08x\n", hr);
    ok(psv == ((void*)0), "psv = %p\n", psv);
}
    memset(&csfv, 0, sizeof(csfv));
    csfv.cbSize = sizeof(csfv);
    csfv.pshf = desktop;
    psv = ((void*)0);
    hr = SHCreateShellFolderViewEx(&csfv, &psv);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(psv != ((void*)0), "psv = %p\n", psv);
    if (psv)
    {
        refCount = IShellView_Release(psv);
        ok(refCount == 0, "refCount = %u\n", refCount);
    }

    IShellFolder_Release(desktop);
}
