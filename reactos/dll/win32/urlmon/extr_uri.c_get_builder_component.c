
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 int E_POINTER ;
 int S_FALSE ;
 int S_OK ;
 char* heap_alloc (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static HRESULT get_builder_component(LPWSTR *component, DWORD *component_len,
                                     LPCWSTR source, DWORD source_len,
                                     LPCWSTR *output, DWORD *output_len)
{
    if(!output_len) {
        if(output)
            *output = ((void*)0);
        return E_POINTER;
    }

    if(!output) {
        *output_len = 0;
        return E_POINTER;
    }

    if(!(*component) && source) {



        *component = heap_alloc((source_len+1)*sizeof(WCHAR));
        if(!(*component))
            return E_OUTOFMEMORY;

        memcpy(*component, source, source_len*sizeof(WCHAR));
        (*component)[source_len] = '\0';
        *component_len = source_len;
    }

    *output = *component;
    *output_len = *component_len;
    return *output ? S_OK : S_FALSE;
}
