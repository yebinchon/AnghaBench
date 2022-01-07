
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef int RPC_STATUS ;
typedef int HINTERNET ;


 int ARRAY_SIZE (char const*) ;
 int ERR (char*,int) ;
 int GetProcessHeap () ;
 int HTTP_ADDREQ_FLAG_ADD ;
 int HTTP_ADDREQ_FLAG_REPLACE ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ HttpAddRequestHeadersW (int ,char*,int,int) ;



 int RPC_S_OK ;
 int RPC_S_SERVER_UNAVAILABLE ;
 int encode_base64 (char*,int,char*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static RPC_STATUS insert_authorization_header(HINTERNET request, ULONG scheme, char *data, int data_len)
{
    static const WCHAR authW[] = {'A','u','t','h','o','r','i','z','a','t','i','o','n',':',' '};
    static const WCHAR basicW[] = {'B','a','s','i','c',' '};
    static const WCHAR negotiateW[] = {'N','e','g','o','t','i','a','t','e',' '};
    static const WCHAR ntlmW[] = {'N','T','L','M',' '};
    int scheme_len, auth_len = ARRAY_SIZE(authW), len = ((data_len + 2) * 4) / 3;
    const WCHAR *scheme_str;
    WCHAR *header, *ptr;
    RPC_STATUS status = RPC_S_SERVER_UNAVAILABLE;

    switch (scheme)
    {
    case 130:
        scheme_str = basicW;
        scheme_len = ARRAY_SIZE(basicW);
        break;
    case 129:
        scheme_str = negotiateW;
        scheme_len = ARRAY_SIZE(negotiateW);
        break;
    case 128:
        scheme_str = ntlmW;
        scheme_len = ARRAY_SIZE(ntlmW);
        break;
    default:
        ERR("unknown scheme %u\n", scheme);
        return RPC_S_SERVER_UNAVAILABLE;
    }
    if ((header = HeapAlloc(GetProcessHeap(), 0, (auth_len + scheme_len + len + 2) * sizeof(WCHAR))))
    {
        memcpy(header, authW, auth_len * sizeof(WCHAR));
        ptr = header + auth_len;
        memcpy(ptr, scheme_str, scheme_len * sizeof(WCHAR));
        ptr += scheme_len;
        len = encode_base64(data, data_len, ptr);
        ptr[len++] = '\r';
        ptr[len++] = '\n';
        ptr[len] = 0;
        if (HttpAddRequestHeadersW(request, header, -1, HTTP_ADDREQ_FLAG_ADD|HTTP_ADDREQ_FLAG_REPLACE))
            status = RPC_S_OK;
        HeapFree(GetProcessHeap(), 0, header);
    }
    return status;
}
