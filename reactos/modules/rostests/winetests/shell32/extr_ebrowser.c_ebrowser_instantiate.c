
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IExplorerBrowser ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ExplorerBrowser ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IExplorerBrowser ;

__attribute__((used)) static HRESULT ebrowser_instantiate(IExplorerBrowser **peb)
{
    return CoCreateInstance(&CLSID_ExplorerBrowser, ((void*)0), CLSCTX_INPROC_SERVER,
                            &IID_IExplorerBrowser, (void**)peb);
}
