
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Name; } ;
typedef int OLECHAR ;
typedef TYPE_1__ ITypeInfoImpl ;


 int TLB_get_bstr (int ) ;
 int lstrcmpiW (int ,int const*) ;

__attribute__((used)) static inline ITypeInfoImpl *TLB_get_typeinfo_by_name(ITypeInfoImpl **typeinfos,
        UINT n, const OLECHAR *name)
{
    while(n){
        if(!lstrcmpiW(TLB_get_bstr((*typeinfos)->Name), name))
            return *typeinfos;
        ++typeinfos;
        --n;
    }
    return ((void*)0);
}
