
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;


 scalar_t__ VT_BSTR ;
 int * V_BSTR (int const*) ;
 int ** V_BSTRREF (int const*) ;
 scalar_t__ V_VT (int const*) ;

__attribute__((used)) static inline WCHAR *get_key_strptr(const VARIANT *key)
{
    if (V_VT(key) == VT_BSTR)
        return V_BSTR(key);

    if (V_BSTRREF(key))
        return *V_BSTRREF(key);

    return ((void*)0);
}
