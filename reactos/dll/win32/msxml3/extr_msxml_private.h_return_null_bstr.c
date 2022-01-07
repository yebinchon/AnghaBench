
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int * BSTR ;


 int E_INVALIDARG ;
 int S_FALSE ;

__attribute__((used)) static inline HRESULT return_null_bstr(BSTR *p)
{
    if(!p)
        return E_INVALIDARG;

    *p = ((void*)0);
    return S_FALSE;
}
