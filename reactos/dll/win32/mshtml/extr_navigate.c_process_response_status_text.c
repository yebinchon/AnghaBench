
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 char* heap_strndupWtoU (int const*,int) ;
 int * strchrW (int const*,char) ;

__attribute__((used)) static HRESULT process_response_status_text(const WCHAR *header, const WCHAR *header_end, char **status_text)
{
    header = strchrW(header + 1, ' ');
    if(!header || header >= header_end)
        return E_FAIL;
    header = strchrW(header + 1, ' ');
    if(!header || header >= header_end)
        return E_FAIL;
    ++header;

    *status_text = heap_strndupWtoU(header, header_end - header);

    if(!*status_text)
        return E_OUTOFMEMORY;

    return S_OK;
}
