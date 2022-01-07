
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int IUnknown ;
typedef int IInternetProtocolInfo ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_JSProtocol ;
 int CoGetClassObject (int *,int ,int *,int *,void**) ;
 int E_FAIL ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IInternetProtocolInfo ;
 int IID_IUnknown ;
 int IInternetProtocolInfo_CombineUrl (int *,int ,int ,int ,int *,int,int*,int ) ;
 int IInternetProtocolInfo_CompareUrl (int *,int ,int ,int ) ;
 int IInternetProtocolInfo_ParseUrl (int *,int ,int,int ,int *,int,int*,int ) ;
 int IInternetProtocolInfo_QueryInfo (int *,int ,int const,int ,int *,int,int*,int ) ;
 int IInternetProtocolInfo_Release (int *) ;
 int INET_E_DEFAULT_ACTION ;
 int INET_E_USE_DEFAULT_PROTOCOLHANDLER ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int PARSE_CANONICALIZE ;
 int PARSE_DOMAIN ;
 int PARSE_SECURITY_URL ;
 int PARSE_UNESCAPE ;


 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int javascript_test_url ;
 int memset (int *,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_javascript_protocol(void)
{
    IInternetProtocolInfo *protocol_info;
    IUnknown *unk;
    IClassFactory *factory;
    HRESULT hres;

    hres = CoGetClassObject(&CLSID_JSProtocol, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    ok(hres == S_OK, "Could not get IInternetProtocolInfo interface: %08x\n", hres);
    if(SUCCEEDED(hres)) {
        WCHAR buf[128];
        DWORD size;
        int i;

        for(i = PARSE_CANONICALIZE; i <= PARSE_UNESCAPE; i++) {
            if(i != PARSE_SECURITY_URL && i != PARSE_DOMAIN) {
                hres = IInternetProtocolInfo_ParseUrl(protocol_info, javascript_test_url, i, 0, buf,
                        sizeof(buf)/sizeof(buf[0]), &size, 0);
                ok(hres == INET_E_DEFAULT_ACTION,
                        "[%d] failed: %08x, expected INET_E_DEFAULT_ACTION\n", i, hres);
            }
        }

        hres = IInternetProtocolInfo_ParseUrl(protocol_info, javascript_test_url, PARSE_UNESCAPE+1, 0, buf,
                sizeof(buf)/sizeof(buf[0]), &size, 0);
        ok(hres == INET_E_DEFAULT_ACTION,
                "ParseUrl failed: %08x, expected INET_E_DEFAULT_ACTION\n", hres);

        size = 0xdeadbeef;
        hres = IInternetProtocolInfo_CombineUrl(protocol_info, javascript_test_url, javascript_test_url,
                0, buf, sizeof(buf)/sizeof(buf[0]), &size, 0);
        ok(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER, "CombineUrl failed: %08x\n", hres);
        ok(size == 0xdeadbeef, "size=%d\n", size);

        hres = IInternetProtocolInfo_CompareUrl(protocol_info, javascript_test_url, javascript_test_url, 0);
        ok(hres == E_NOTIMPL, "CompareUrl failed: %08x\n", hres);

        for(i=0; i<30; i++) {
            switch(i) {
            case 128:
            case 129:
                break;
            default:
                hres = IInternetProtocolInfo_QueryInfo(protocol_info, javascript_test_url, i, 0,
                                                       buf, sizeof(buf), &size, 0);
                ok(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER,
                   "QueryInfo(%d) returned: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\n", i, hres);
            }
        }


        memset(buf, '?', sizeof(buf));
        hres = IInternetProtocolInfo_QueryInfo(protocol_info, javascript_test_url, 128, 0,
                                               buf, sizeof(buf), &size, 0);
        ok(hres == S_OK, "QueryInfo(QUERY_USES_NETWORK) failed: %08x\n", hres);
        ok(size == sizeof(DWORD), "size=%d\n", size);
        ok(!*(DWORD*)buf, "buf=%d\n", *(DWORD*)buf);

        memset(buf, '?', sizeof(buf));
        hres = IInternetProtocolInfo_QueryInfo(protocol_info, javascript_test_url, 128, 0,
                                               buf, sizeof(buf), ((void*)0), 0);
        ok(hres == S_OK, "QueryInfo(QUERY_USES_NETWORK) failed: %08x\n", hres);
        ok(!*(DWORD*)buf, "buf=%d\n", *(DWORD*)buf);

        hres = IInternetProtocolInfo_QueryInfo(protocol_info, javascript_test_url, 128, 0,
                                               buf, 3, &size, 0);
        ok(hres == E_FAIL, "QueryInfo(QUERY_USES_NETWORK) failed: %08x, expected E_FAIL\n", hres);

        hres = IInternetProtocolInfo_QueryInfo(protocol_info, javascript_test_url, 128, 0,
                                               ((void*)0), sizeof(buf), &size, 0);
        ok(hres == E_FAIL, "QueryInfo(QUERY_USES_NETWORK) failed: %08x, expected E_FAIL\n", hres);

        hres = IInternetProtocolInfo_QueryInfo(protocol_info, javascript_test_url, 60, 0,
                                               ((void*)0), sizeof(buf), &size, 0);
        ok(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER,
           "QueryInfo failed: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\n", hres);



        IInternetProtocolInfo_Release(protocol_info);
    }

    hres = IUnknown_QueryInterface(unk, &IID_IClassFactory, (void**)&factory);
    ok(hres == S_OK, "Could not get IClassFactory interface\n");
    if(SUCCEEDED(hres))
        IClassFactory_Release(factory);

    IUnknown_Release(unk);
}
