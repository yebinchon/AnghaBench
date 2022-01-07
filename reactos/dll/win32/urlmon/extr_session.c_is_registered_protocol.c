
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 int CoInternetParseUrl (int ,int ,int ,int *,int ,int *,int ) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int PARSE_SCHEMA ;
 scalar_t__ S_OK ;
 scalar_t__ get_protocol_cf (int *,int ,int *,int *) ;

BOOL is_registered_protocol(LPCWSTR url)
{
    DWORD schema_len;
    WCHAR schema[64];
    HRESULT hres;

    hres = CoInternetParseUrl(url, PARSE_SCHEMA, 0, schema, ARRAY_SIZE(schema), &schema_len, 0);
    if(FAILED(hres))
        return FALSE;

    return get_protocol_cf(schema, schema_len, ((void*)0), ((void*)0)) == S_OK;
}
