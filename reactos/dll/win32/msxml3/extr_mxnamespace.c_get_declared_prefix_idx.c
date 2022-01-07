
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nscontext {size_t count; TYPE_1__* ns; } ;
struct TYPE_2__ {int * prefix; } ;
typedef size_t LONG ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_FAIL ;
 int S_OK ;

__attribute__((used)) static HRESULT get_declared_prefix_idx(const struct nscontext *ctxt, LONG index, BSTR *prefix)
{
    *prefix = ((void*)0);

    if (index >= ctxt->count || index < 0) return E_FAIL;

    if (index > 0) index = ctxt->count - index;
    *prefix = ctxt->ns[index].prefix;

    return S_OK;
}
