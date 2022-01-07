
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IExplorerBrowser ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IExplorerBrowser_Release (int *) ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ ebrowser_instantiate (int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static BOOL test_instantiate_control(void)
{
    IExplorerBrowser *peb;
    HRESULT hr;

    hr = ebrowser_instantiate(&peb);
    ok(hr == S_OK || hr == REGDB_E_CLASSNOTREG, "Got (0x%08x)\n", hr);
    if(FAILED(hr))
        return FALSE;

    IExplorerBrowser_Release(peb);
    return TRUE;
}
