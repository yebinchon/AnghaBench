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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IInternetProtocolEx ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BINDF_FROMURLMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GetBindInfo ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INET_E_RESOURCE_NOT_FOUND ; 
 int /*<<< orphan*/  ReportData ; 
 int /*<<< orphan*/  ReportProgress_CACHEFILENAMEAVAILABLE ; 
 int /*<<< orphan*/  ReportProgress_DIRECTBIND ; 
 int /*<<< orphan*/  ReportProgress_MIMETYPEAVAILABLE ; 
 int /*<<< orphan*/  ReportProgress_SENDINGREQUEST ; 
 int /*<<< orphan*/  ReportProgress_VERIFIEDMIMETYPEAVAILABLE ; 
 int /*<<< orphan*/  ReportResult ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  bind_info ; 
 int bindf ; 
 scalar_t__ expect_hrResult ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  protocol_sink ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static BOOL FUNC7(IInternetProtocol *protocol, LPCWSTR url,
        IInternetProtocolEx *protocolex, IUri *uri, BOOL is_first)
{
    HRESULT hres;

    FUNC4(GetBindInfo);
    if(!(bindf & BINDF_FROMURLMON))
       FUNC4(ReportProgress_DIRECTBIND);
    if(is_first) {
        FUNC4(ReportProgress_SENDINGREQUEST);
        FUNC4(ReportProgress_CACHEFILENAMEAVAILABLE);
        if(bindf & BINDF_FROMURLMON)
            FUNC4(ReportProgress_VERIFIEDMIMETYPEAVAILABLE);
        else
            FUNC4(ReportProgress_MIMETYPEAVAILABLE);
    }
    FUNC4(ReportData);
    if(is_first)
        FUNC4(ReportResult);

    expect_hrResult = S_OK;

    if(protocolex) {
        hres = FUNC2(protocolex, uri, &protocol_sink, &bind_info, 0, 0);
        FUNC5(hres == S_OK, "StartEx failed: %08x\n", hres);
    }else {
        hres = FUNC3(protocol, url, &protocol_sink, &bind_info, 0, 0);
        if(hres == INET_E_RESOURCE_NOT_FOUND) {
            FUNC6("Start failed\n");
            return FALSE;
        }
        FUNC5(hres == S_OK, "Start failed: %08x\n", hres);
    }

    FUNC0(GetBindInfo);
    if(!(bindf & BINDF_FROMURLMON))
        FUNC1(ReportProgress_DIRECTBIND); /* Not called by IE10 */
    if(is_first) {
        FUNC0(ReportProgress_SENDINGREQUEST);
        FUNC0(ReportProgress_CACHEFILENAMEAVAILABLE);
        if(bindf & BINDF_FROMURLMON)
            FUNC0(ReportProgress_VERIFIEDMIMETYPEAVAILABLE);
        else
            FUNC0(ReportProgress_MIMETYPEAVAILABLE);
    }
    FUNC0(ReportData);
    if(is_first)
        FUNC0(ReportResult);

    return TRUE;
}