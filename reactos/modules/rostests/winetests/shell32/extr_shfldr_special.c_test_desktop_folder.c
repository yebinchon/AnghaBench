
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IShellFolder ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_POINTER ;
 int IID_IShellFolder ;
 scalar_t__ IShellFolder_QueryInterface (int *,int *,int *) ;
 int IShellFolder_Release (int *) ;
 scalar_t__ SHGetDesktopFolder (int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_desktop_folder(void)
{
    IShellFolder *psf;
    HRESULT hr;

    hr = SHGetDesktopFolder(&psf);
    ok(hr == S_OK, "Got %x\n", hr);

    hr = IShellFolder_QueryInterface(psf, &IID_IShellFolder, ((void*)0));
    ok(hr == E_POINTER, "Got %x\n", hr);

    IShellFolder_Release(psf);
}
