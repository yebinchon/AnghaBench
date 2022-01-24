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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int BINDF_FROMURLMON ; 
 int BINDF_NEEDFILE ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ITSProtocol ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INET_E_USE_DEFAULT_PROTOCOLHANDLER ; 
 int /*<<< orphan*/  ITS_PROTOCOL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/  STG_E_FILENOTFOUND ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bind_info ; 
 int bindf ; 
 int /*<<< orphan*/  blank_url1 ; 
 int /*<<< orphan*/  blank_url2 ; 
 int /*<<< orphan*/  blank_url3 ; 
 int /*<<< orphan*/  blank_url4 ; 
 int /*<<< orphan*/  blank_url5 ; 
 int /*<<< orphan*/  blank_url6 ; 
 int /*<<< orphan*/  blank_url8 ; 
 int /*<<< orphan*/  blank_url9 ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  protocol_sink ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_protocol ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
{
    IInternetProtocolInfo *info;
    IClassFactory *factory;
    IUnknown *unk;
    ULONG ref;
    HRESULT hres;

    static const WCHAR wrong_url1[] =
        {'i','t','s',':','t','e','s','t','.','c','h','m',':',':','/','b','l','a','n','.','h','t','m','l',0};
    static const WCHAR wrong_url2[] =
        {'i','t','s',':','t','e','s','.','c','h','m',':',':','b','/','l','a','n','k','.','h','t','m','l',0};
    static const WCHAR wrong_url3[] =
        {'i','t','s',':','t','e','s','t','.','c','h','m','/','b','l','a','n','k','.','h','t','m','l',0};
    static const WCHAR wrong_url4[] = {'m','k',':','@','M','S','I','T','S','t','o','r',':',
         't','e','s','t','.','c','h','m',':',':','/','b','l','a','n','k','.','h','t','m','l',0};
    static const WCHAR wrong_url5[] = {'f','i','l','e',':',
        't','e','s','.','c','h','m',':',':','/','b','l','a','n','k','.','h','t','m','l',0};

    test_protocol = ITS_PROTOCOL;

    hres = FUNC0(&CLSID_ITSProtocol, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void**)&unk);
    FUNC10(hres == S_OK ||
       FUNC9(hres == REGDB_E_CLASSNOTREG), /* Some W95 and NT4 */
       "CoGetClassObject failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC6(unk, &IID_IInternetProtocolInfo, (void**)&info);
    FUNC10(hres == E_NOINTERFACE, "Could not get IInternetProtocolInfo: %08x\n", hres);

    hres = FUNC6(unk, &IID_IClassFactory, (void**)&factory);
    FUNC10(hres == S_OK, "Could not get IClassFactory interface\n");
    if(FUNC8(hres)) {
        IInternetProtocol *protocol;

        hres = FUNC2(factory, NULL, &IID_IInternetProtocol, (void**)&protocol);
        FUNC10(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
        if(FUNC8(hres)) {
            FUNC11(protocol);

            FUNC12(protocol, wrong_url1, STG_E_FILENOTFOUND);
            FUNC12(protocol, wrong_url2, STG_E_FILENOTFOUND);
            FUNC12(protocol, wrong_url3, STG_E_FILENOTFOUND);

            hres = FUNC5(protocol, wrong_url4, &protocol_sink, &bind_info, 0, 0);
            FUNC10(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER,
               "Start failed: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\n", hres);

            hres = FUNC5(protocol, wrong_url5, &protocol_sink, &bind_info, 0, 0);
            FUNC10(hres == INET_E_USE_DEFAULT_PROTOCOLHANDLER,
               "Start failed: %08x, expected INET_E_USE_DEFAULT_PROTOCOLHANDLER\n", hres);

            ref = FUNC4(protocol);
            FUNC10(!ref, "protocol ref=%d\n", ref);

            FUNC13(factory, blank_url1, TRUE);
            FUNC13(factory, blank_url2, TRUE);
            FUNC13(factory, blank_url3, TRUE);
            FUNC13(factory, blank_url4, TRUE);
            FUNC13(factory, blank_url5, TRUE);
            FUNC13(factory, blank_url6, TRUE);
            FUNC13(factory, blank_url8, TRUE);
            FUNC13(factory, blank_url9, TRUE);
            bindf = BINDF_FROMURLMON | BINDF_NEEDFILE;
            FUNC13(factory, blank_url1, TRUE);
        }

        FUNC3(factory);
    }

    FUNC7(unk);
}