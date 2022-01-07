
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * SysAllocStringLen (int const*,int) ;

__attribute__((used)) static inline HRESULT return_bstrn(const WCHAR *value, int len, BSTR *p)
{
    if(value) {
        *p = SysAllocStringLen(value, len);
        if(!*p)
            return E_OUTOFMEMORY;
    }else
        *p = ((void*)0);

    return S_OK;
}
