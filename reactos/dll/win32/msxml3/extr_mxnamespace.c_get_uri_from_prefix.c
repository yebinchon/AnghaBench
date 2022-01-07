
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nscontext {int count; TYPE_1__* ns; } ;
typedef int WCHAR ;
struct TYPE_2__ {int * uri; int prefix; } ;
typedef int HRESULT ;
typedef int * BSTR ;


 int S_FALSE ;
 int S_OK ;
 int strcmpW (int ,int const*) ;

__attribute__((used)) static HRESULT get_uri_from_prefix(const struct nscontext *ctxt, const WCHAR *prefix, BSTR *uri)
{
    int i;

    for (i = 0; i < ctxt->count; i++)
        if (!strcmpW(ctxt->ns[i].prefix, prefix))
        {
            *uri = ctxt->ns[i].uri;
            return S_OK;
        }

    *uri = ((void*)0);
    return S_FALSE;
}
