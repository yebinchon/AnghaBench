
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wine_prefixW ;
typedef char WCHAR ;
typedef char* LPCWSTR ;
typedef int HRESULT ;
typedef char* BSTR ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 char* SysAllocString (char const*) ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (char*) ;
 int strncmpW (char*,char const*,int) ;

HRESULT nsuri_to_url(LPCWSTR nsuri, BOOL ret_empty, BSTR *ret)
{
    const WCHAR *ptr = nsuri;

    static const WCHAR wine_prefixW[] = {'w','i','n','e',':'};

    if(!strncmpW(nsuri, wine_prefixW, sizeof(wine_prefixW)/sizeof(WCHAR)))
        ptr += sizeof(wine_prefixW)/sizeof(WCHAR);

    if(*ptr || ret_empty) {
        *ret = SysAllocString(ptr);
        if(!*ret)
            return E_OUTOFMEMORY;
    }else {
        *ret = ((void*)0);
    }

    TRACE("%s -> %s\n", debugstr_w(nsuri), debugstr_w(*ret));
    return S_OK;
}
