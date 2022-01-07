
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int * SysAllocString (int const*) ;

__attribute__((used)) static inline HRESULT return_bstr(const WCHAR *value, BSTR *p)
{
    if(!p)
        return E_INVALIDARG;

    if(value) {
        *p = SysAllocString(value);
        if(!*p)
            return E_OUTOFMEMORY;
    }else {
        *p = ((void*)0);
    }

    return S_OK;
}
