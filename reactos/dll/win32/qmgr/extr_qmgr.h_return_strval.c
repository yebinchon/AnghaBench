
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HRESULT ;


 int * CoTaskMemAlloc (int) ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int strcpyW (int *,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline HRESULT return_strval(const WCHAR *str, WCHAR **ret)
{
    int len;

    if (!ret) return E_INVALIDARG;

    len = strlenW(str);
    *ret = CoTaskMemAlloc((len+1)*sizeof(WCHAR));
    if (!*ret) return E_OUTOFMEMORY;
    strcpyW(*ret, str);
    return S_OK;
}
