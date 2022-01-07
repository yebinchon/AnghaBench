
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUri ;
typedef int HRESULT ;


 int CoInternetCombineUrlEx (int *,int const*,int,int **,int ) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int URL_DONT_ESCAPE_EXTRA_INFO ;
 int URL_ESCAPE_SPACES_ONLY ;
 int WARN (char*,int ) ;
 int * get_uri_nofrag (int *) ;

__attribute__((used)) static HRESULT combine_url(IUri *base_uri, const WCHAR *rel_url, IUri **ret)
{
    IUri *uri_nofrag;
    HRESULT hres;

    uri_nofrag = get_uri_nofrag(base_uri);
    if(!uri_nofrag)
        return E_FAIL;

    hres = CoInternetCombineUrlEx(uri_nofrag, rel_url, URL_ESCAPE_SPACES_ONLY|URL_DONT_ESCAPE_EXTRA_INFO,
                ret, 0);
    IUri_Release(uri_nofrag);
    if(FAILED(hres))
        WARN("CoInternetCombineUrlEx failed: %08x\n", hres);
    return hres;
}
