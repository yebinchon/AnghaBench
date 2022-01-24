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
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GetBindInfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ITS_PROTOCOL ; 
 scalar_t__ MK_PROTOCOL ; 
 int /*<<< orphan*/  ReportData ; 
 int /*<<< orphan*/  ReportProgress_BEGINDOWNLOADDATA ; 
 int /*<<< orphan*/  ReportProgress_CACHEFILENAMEAVAILABLE ; 
 int /*<<< orphan*/  ReportProgress_DIRECTBIND ; 
 int /*<<< orphan*/  ReportProgress_MIMETYPEAVAILABLE ; 
 int /*<<< orphan*/  ReportProgress_SENDINGREQUEST ; 
 int /*<<< orphan*/  ReportResult ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  bind_info ; 
 int /*<<< orphan*/  expect_hrResult ; 
 int /*<<< orphan*/  protocol_sink ; 
 scalar_t__ test_protocol ; 

__attribute__((used)) static HRESULT FUNC5(unsigned line, IInternetProtocol *protocol, LPCWSTR url, BOOL expect_mime)
{
    HRESULT hres;

    FUNC4(GetBindInfo);
    if(test_protocol == MK_PROTOCOL)
        FUNC4(ReportProgress_DIRECTBIND);
    FUNC4(ReportProgress_SENDINGREQUEST);
    if(expect_mime)
        FUNC4(ReportProgress_MIMETYPEAVAILABLE);
    if(test_protocol == MK_PROTOCOL)
        FUNC4(ReportProgress_CACHEFILENAMEAVAILABLE);
    FUNC4(ReportData);
    if(test_protocol == ITS_PROTOCOL)
        FUNC4(ReportProgress_BEGINDOWNLOADDATA);
    FUNC4(ReportResult);
    expect_hrResult = S_OK;

    hres = FUNC2(protocol, url, &protocol_sink, &bind_info, 0, 0);

    if(FUNC1(hres)) {
        FUNC3(GetBindInfo);
        if(test_protocol == MK_PROTOCOL)
            FUNC3(ReportProgress_DIRECTBIND);
        FUNC3(ReportProgress_SENDINGREQUEST);
        if(expect_mime)
            FUNC3(ReportProgress_MIMETYPEAVAILABLE);
        if(test_protocol == MK_PROTOCOL)
            FUNC4(ReportProgress_CACHEFILENAMEAVAILABLE);
        FUNC3(ReportData);
        if(test_protocol == ITS_PROTOCOL)
            FUNC3(ReportProgress_BEGINDOWNLOADDATA);
        FUNC3(ReportResult);
    }else {
        FUNC0(GetBindInfo);
        if(test_protocol == MK_PROTOCOL)
            FUNC3(ReportProgress_DIRECTBIND);
        FUNC0(ReportProgress_SENDINGREQUEST);
        if(expect_mime)
            FUNC0(ReportProgress_MIMETYPEAVAILABLE);
        if(test_protocol == MK_PROTOCOL)
            FUNC4(ReportProgress_CACHEFILENAMEAVAILABLE);
        FUNC0(ReportData);
        if(test_protocol == ITS_PROTOCOL)
            FUNC0(ReportProgress_BEGINDOWNLOADDATA);
        FUNC0(ReportResult);
    }

    return hres;
}