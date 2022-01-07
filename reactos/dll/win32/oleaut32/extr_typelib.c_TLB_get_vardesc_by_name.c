
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Name; } ;
typedef TYPE_1__ TLBVarDesc ;
typedef int OLECHAR ;


 int TLB_get_bstr (int ) ;
 int lstrcmpiW (int ,int const*) ;

__attribute__((used)) static inline TLBVarDesc *TLB_get_vardesc_by_name(TLBVarDesc *vardescs,
        UINT n, const OLECHAR *name)
{
    while(n){
        if(!lstrcmpiW(TLB_get_bstr(vardescs->Name), name))
            return vardescs;
        ++vardescs;
        --n;
    }
    return ((void*)0);
}
