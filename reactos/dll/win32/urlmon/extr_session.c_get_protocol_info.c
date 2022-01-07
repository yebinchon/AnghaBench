
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cf; int urlmon; } ;
typedef TYPE_1__ name_space ;
typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int IInternetProtocolInfo ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CoInternetParseUrl (int ,int ,int ,int *,int ,int *,int ) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FAILED (int ) ;
 int IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IClassFactory_QueryInterface (int *,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IInternetProtocolInfo ;
 int LeaveCriticalSection (int *) ;
 int PARSE_SCHEMA ;
 scalar_t__ SUCCEEDED (int ) ;
 TYPE_1__* find_name_space (int *) ;
 int get_protocol_cf (int *,int ,int *,int **) ;
 int session_cs ;

IInternetProtocolInfo *get_protocol_info(LPCWSTR url)
{
    IInternetProtocolInfo *ret = ((void*)0);
    IClassFactory *cf;
    name_space *ns;
    WCHAR schema[64];
    DWORD schema_len;
    HRESULT hres;

    hres = CoInternetParseUrl(url, PARSE_SCHEMA, 0, schema, ARRAY_SIZE(schema), &schema_len, 0);
    if(FAILED(hres) || !schema_len)
        return ((void*)0);

    EnterCriticalSection(&session_cs);

    ns = find_name_space(schema);
    if(ns && !ns->urlmon) {
        hres = IClassFactory_QueryInterface(ns->cf, &IID_IInternetProtocolInfo, (void**)&ret);
        if(FAILED(hres))
            hres = IClassFactory_CreateInstance(ns->cf, ((void*)0), &IID_IInternetProtocolInfo, (void**)&ret);
    }

    LeaveCriticalSection(&session_cs);

    if(ns && SUCCEEDED(hres))
        return ret;

    hres = get_protocol_cf(schema, schema_len, ((void*)0), &cf);
    if(FAILED(hres))
        return ((void*)0);

    hres = IClassFactory_QueryInterface(cf, &IID_IInternetProtocolInfo, (void**)&ret);
    if(FAILED(hres))
        IClassFactory_CreateInstance(cf, ((void*)0), &IID_IInternetProtocolInfo, (void**)&ret);
    IClassFactory_Release(cf);

    return ret;
}
