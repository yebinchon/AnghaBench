#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  HINTERNET ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int HTTP_ADDREQ_FLAG_ADD ; 
 int HTTP_ADDREQ_FLAG_REPLACE ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
#define  RPC_C_HTTP_AUTHN_SCHEME_BASIC 130 
#define  RPC_C_HTTP_AUTHN_SCHEME_NEGOTIATE 129 
#define  RPC_C_HTTP_AUTHN_SCHEME_NTLM 128 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_SERVER_UNAVAILABLE ; 
 int FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

__attribute__((used)) static RPC_STATUS FUNC8(HINTERNET request, ULONG scheme, char *data, int data_len)
{
    static const WCHAR authW[] = {'A','u','t','h','o','r','i','z','a','t','i','o','n',':',' '};
    static const WCHAR basicW[] = {'B','a','s','i','c',' '};
    static const WCHAR negotiateW[] = {'N','e','g','o','t','i','a','t','e',' '};
    static const WCHAR ntlmW[] = {'N','T','L','M',' '};
    int scheme_len, auth_len = FUNC0(authW), len = ((data_len + 2) * 4) / 3;
    const WCHAR *scheme_str;
    WCHAR *header, *ptr;
    RPC_STATUS status = RPC_S_SERVER_UNAVAILABLE;

    switch (scheme)
    {
    case RPC_C_HTTP_AUTHN_SCHEME_BASIC:
        scheme_str = basicW;
        scheme_len = FUNC0(basicW);
        break;
    case RPC_C_HTTP_AUTHN_SCHEME_NEGOTIATE:
        scheme_str = negotiateW;
        scheme_len = FUNC0(negotiateW);
        break;
    case RPC_C_HTTP_AUTHN_SCHEME_NTLM:
        scheme_str = ntlmW;
        scheme_len = FUNC0(ntlmW);
        break;
    default:
        FUNC1("unknown scheme %u\n", scheme);
        return RPC_S_SERVER_UNAVAILABLE;
    }
    if ((header = FUNC3(FUNC2(), 0, (auth_len + scheme_len + len + 2) * sizeof(WCHAR))))
    {
        FUNC7(header, authW, auth_len * sizeof(WCHAR));
        ptr = header + auth_len;
        FUNC7(ptr, scheme_str, scheme_len * sizeof(WCHAR));
        ptr += scheme_len;
        len = FUNC6(data, data_len, ptr);
        ptr[len++] = '\r';
        ptr[len++] = '\n';
        ptr[len] = 0;
        if (FUNC5(request, header, -1, HTTP_ADDREQ_FLAG_ADD|HTTP_ADDREQ_FLAG_REPLACE))
            status = RPC_S_OK;
        FUNC4(FUNC2(), 0, header);
    }
    return status;
}