
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Uri ;
typedef int IUri ;
typedef int HRESULT ;


 int IID_IUriObj ;
 int IUri_QueryInterface (int *,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static Uri *get_uri_obj(IUri *uri)
{
    Uri *ret;
    HRESULT hres;

    hres = IUri_QueryInterface(uri, &IID_IUriObj, (void**)&ret);
    return SUCCEEDED(hres) ? ret : ((void*)0);
}
