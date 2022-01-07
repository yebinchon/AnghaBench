
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT_BOOL ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int S_FALSE ;
 int VARIANT_FALSE ;

__attribute__((used)) static inline HRESULT return_var_false(VARIANT_BOOL *p)
{
    if(!p)
        return E_INVALIDARG;

    *p = VARIANT_FALSE;
    return S_FALSE;
}
