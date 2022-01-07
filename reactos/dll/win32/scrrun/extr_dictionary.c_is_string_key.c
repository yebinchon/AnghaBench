
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int BOOL ;


 int VT_BSTR ;
 int VT_BYREF ;
 int V_VT (int const*) ;

__attribute__((used)) static inline BOOL is_string_key(const VARIANT *key)
{
    return V_VT(key) == VT_BSTR || V_VT(key) == (VT_BSTR|VT_BYREF);
}
