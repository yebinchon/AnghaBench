
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IFileDialog ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FileOpenDialog ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IFileDialog_Release (int *) ;
 scalar_t__ IFileDialog_SetClientGuid (int *,int *) ;
 int IID_IFileDialog ;
 int IID_IUnknown ;
 int IID_NULL ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_persistent_state(void)
{
    IFileDialog *fd;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_FileOpenDialog, ((void*)0), CLSCTX_INPROC_SERVER,
                          &IID_IFileDialog, (void**)&fd);
    ok(hr == S_OK, "got 0x%08x.\n", hr);

if (0)
{

    hr = IFileDialog_SetClientGuid(fd, ((void*)0));
}

    hr = IFileDialog_SetClientGuid(fd, &IID_IUnknown);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IFileDialog_SetClientGuid(fd, &IID_NULL);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    IFileDialog_Release(fd);
}
