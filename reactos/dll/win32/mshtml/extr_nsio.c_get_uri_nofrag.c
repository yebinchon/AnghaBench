
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUriBuilder ;
typedef int IUri ;
typedef int HRESULT ;
typedef int BOOL ;


 int CreateIUriBuilder (int *,int ,int ,int **) ;
 scalar_t__ FAILED (int ) ;
 int IUriBuilder_CreateUriSimple (int *,int ,int ,int **) ;
 int IUriBuilder_Release (int *) ;
 int IUriBuilder_RemoveProperties (int *,int ) ;
 int IUri_AddRef (int *) ;
 int IUri_HasProperty (int *,int ,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int Uri_HAS_FRAGMENT ;
 int Uri_PROPERTY_FRAGMENT ;

IUri *get_uri_nofrag(IUri *uri)
{
    IUriBuilder *uri_builder;
    IUri *ret;
    BOOL b;
    HRESULT hres;

    hres = IUri_HasProperty(uri, Uri_PROPERTY_FRAGMENT, &b);
    if(SUCCEEDED(hres) && !b) {
        IUri_AddRef(uri);
        return uri;
    }

    hres = CreateIUriBuilder(uri, 0, 0, &uri_builder);
    if(FAILED(hres))
        return ((void*)0);

    hres = IUriBuilder_RemoveProperties(uri_builder, Uri_HAS_FRAGMENT);
    if(SUCCEEDED(hres))
        hres = IUriBuilder_CreateUriSimple(uri_builder, 0, 0, &ret);
    IUriBuilder_Release(uri_builder);
    if(FAILED(hres))
        return ((void*)0);

    return ret;
}
