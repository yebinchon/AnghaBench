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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_JSProtocol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INET_E_DEFAULT_ACTION ; 
 int /*<<< orphan*/  INET_E_USE_DEFAULT_PROTOCOLHANDLER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int PARSE_CANONICALIZE ; 
 int PARSE_DOMAIN ; 
 int PARSE_SECURITY_URL ; 
 int PARSE_UNESCAPE ; 
#define  QUERY_IS_SECURE 129 
#define  QUERY_USES_NETWORK 128 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  javascript_test_url ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    IInternetProtocolInfo *protocol_info;
    IUnknown *unk;
    IClassFactory *factory;
    HRESULT hres;

    hres = FUNC0(&CLSID_JSProtocol, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void**)&unk);
    FUNC12(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC8(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    FUNC12(hres == S_OK, "Could not get IInternetProtocolInfo interface: %08x\n", hres);
    if(FUNC10(hres)) {
        WCHAR buf[128];
        DWORD size;
        int i;

        for(i = PARSE_CANONICALIZE; i <= PARSE_UNESCAPE; i++) {
            if(i != PARSE_SECURITY_URL && i != PARSE_DOMAIN) {
                hres = FUNC5(protocol_info, javascript_test_url, i, 0, buf,
                        sizeof(buf)/sizeof(buf[0]), &size, 0);
                FUNC12(hres == INET_E_DEFAULT_ACTION,
                        "[%d] failed: %08x, expected INET_E_DEFAULT_ACTION\n", i, hres);
            }
        }

        hres = FUNC5(protocol_info, javascript_test_url, PARSE_UNESCAPE+1, 0, buf,
                sizeof(buf)/sizeof(buf[0]), &size, 0);
        FUNC12(hres == INET_E_DEFAULT_ACTION,
                "ParseUrl failed: %08x, expected INET_E_DEFAULT_ACTION\n", hres);

        size = 0xdeadbeef;
        hres = FUNC3(protocol_info, javascript_test_url, javascript_test_url,
                0, buf, sizeof(buf)/sizeof(buf[0]), &size, 0);
        FUNC12(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER, "CombineUrl failed: %08x\n", hres);
        FUNC12(size == 0xdeadbeef, "size=%d\n", size);

        hres = FUNC4(protocol_info, javascript_test_url, javascript_test_url, 0);
        FUNC12(hres == E_NOTIMPL, "CompareUrl failed: %08x\n", hres);

        for(i=0; i<30; i++) {
            switch(i) {
            case QUERY_USES_NETWORK:
            case QUERY_IS_SECURE:
                break;
            default:
                hres = FUNC6(protocol_info, javascript_test_url, i, 0,
                                                       buf, sizeof(buf), &size, 0);
                FUNC12(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER,
                   "QueryInfo(%d) returned: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\n", i, hres);
            }
        }


        FUNC11(buf, '?', sizeof(buf));
        hres = FUNC6(protocol_info, javascript_test_url, QUERY_USES_NETWORK, 0,
                                               buf, sizeof(buf), &size, 0);
        FUNC12(hres == S_OK, "QueryInfo(QUERY_USES_NETWORK) failed: %08x\n", hres);
        FUNC12(size == sizeof(DWORD), "size=%d\n", size);
        FUNC12(!*(DWORD*)buf, "buf=%d\n", *(DWORD*)buf);

        FUNC11(buf, '?', sizeof(buf));
        hres = FUNC6(protocol_info, javascript_test_url, QUERY_USES_NETWORK, 0,
                                               buf, sizeof(buf), NULL, 0);
        FUNC12(hres == S_OK, "QueryInfo(QUERY_USES_NETWORK) failed: %08x\n", hres);
        FUNC12(!*(DWORD*)buf, "buf=%d\n", *(DWORD*)buf);

        hres = FUNC6(protocol_info, javascript_test_url, QUERY_USES_NETWORK, 0,
                                               buf, 3, &size, 0);
        FUNC12(hres == E_FAIL, "QueryInfo(QUERY_USES_NETWORK) failed: %08x, expected E_FAIL\n", hres);

        hres = FUNC6(protocol_info, javascript_test_url, QUERY_USES_NETWORK, 0,
                                               NULL, sizeof(buf), &size, 0);
        FUNC12(hres == E_FAIL, "QueryInfo(QUERY_USES_NETWORK) failed: %08x, expected E_FAIL\n", hres);

        hres = FUNC6(protocol_info, javascript_test_url, 60, 0,
                                               NULL, sizeof(buf), &size, 0);
        FUNC12(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER,
           "QueryInfo failed: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\n", hres);

        /* FIXME: test QUERY_IS_SECURE */

        FUNC7(protocol_info);
    }

    hres = FUNC8(unk, &IID_IClassFactory, (void**)&factory);
    FUNC12(hres == S_OK, "Could not get IClassFactory interface\n");
    if(FUNC10(hres))
        FUNC2(factory);

    FUNC9(unk);
}