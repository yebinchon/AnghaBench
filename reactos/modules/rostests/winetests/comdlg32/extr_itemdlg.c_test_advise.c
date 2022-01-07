
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int IFileDialog ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FileOpenDialog ;
 int CLSID_FileSaveDialog ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ IFileDialog_Release (int *) ;
 int IID_IFileDialog ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_advise_helper (int *) ;
 int trace (char*) ;

__attribute__((used)) static void test_advise(void)
{
    IFileDialog *pfd;
    HRESULT hr;
    LONG ref;

    trace("Testing FileOpenDialog (advise)\n");
    hr = CoCreateInstance(&CLSID_FileOpenDialog, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IFileDialog, (void**)&pfd);
    ok(hr == S_OK, "got 0x%08x.\n", hr);
    test_advise_helper(pfd);
    ref = IFileDialog_Release(pfd);
    ok(!ref, "Got refcount %d, should have been released.\n", ref);

    trace("Testing FileSaveDialog (advise)\n");
    hr = CoCreateInstance(&CLSID_FileSaveDialog, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IFileDialog, (void**)&pfd);
    ok(hr == S_OK, "got 0x%08x.\n", hr);
    test_advise_helper(pfd);
    ref = IFileDialog_Release(pfd);
    ok(!ref, "Got refcount %d, should have been released.\n", ref);
}
