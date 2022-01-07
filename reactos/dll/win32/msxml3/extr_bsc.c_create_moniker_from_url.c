
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int IUri ;
typedef int IMoniker ;
typedef int HRESULT ;


 int CreateURLMonikerEx2 (int *,int *,int **,int ) ;
 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int TRACE (char*,int ) ;
 int create_uri (int ,int **) ;
 int debugstr_w (int ) ;

HRESULT create_moniker_from_url(LPCWSTR url, IMoniker **mon)
{
    HRESULT hr;
    IUri *uri;

    TRACE("%s\n", debugstr_w(url));

    if (FAILED(hr = create_uri(url, &uri)))
        return hr;

    hr = CreateURLMonikerEx2(((void*)0), uri, mon, 0);
    IUri_Release(uri);
    return hr;
}
