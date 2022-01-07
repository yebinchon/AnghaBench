
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPITEMIDLIST ;
typedef int IExplorerBrowser ;
typedef int HRESULT ;


 int CSIDL_DESKTOP ;
 int IExplorerBrowser_BrowseToIDList (int *,int ,int ) ;
 int ILFree (int ) ;
 int SHGetSpecialFolderLocation (int ,int ,int *) ;
 int hwnd ;

__attribute__((used)) static HRESULT ebrowser_browse_to_desktop(IExplorerBrowser *peb)
{
    LPITEMIDLIST pidl_desktop;
    HRESULT hr;
    SHGetSpecialFolderLocation (hwnd, CSIDL_DESKTOP, &pidl_desktop);
    hr = IExplorerBrowser_BrowseToIDList(peb, pidl_desktop, 0);
    ILFree(pidl_desktop);
    return hr;
}
