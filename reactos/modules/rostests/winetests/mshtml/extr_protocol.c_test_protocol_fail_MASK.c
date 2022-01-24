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
typedef  int HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FACILITY_WIN32 ; 
 int /*<<< orphan*/  GetBindInfo ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReportResult ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_info ; 
 int expect_hrResult ; 
 scalar_t__ expect_hr_win32err ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int /*<<< orphan*/  protocol_sink ; 

__attribute__((used)) static void FUNC4(IInternetProtocol *protocol, LPCWSTR url, HRESULT expected_hres,
        BOOL expect_win32err)
{
    HRESULT hres;

    FUNC2(GetBindInfo);
    FUNC2(ReportResult);

    expect_hrResult = expected_hres;
    expect_hr_win32err = expect_win32err;
    hres = FUNC1(protocol, url, &protocol_sink, &bind_info, 0, 0);
    if(expect_win32err)
        FUNC3((hres&0xffff0000) == ((FACILITY_WIN32 << 16)|0x80000000) || hres == expect_hrResult,
                "expected win32 err or %08x got: %08x\n", expected_hres, hres);
    else
        FUNC3(hres == expect_hrResult, "expected: %08x got: %08x\n", expect_hrResult, hres);

    FUNC0(GetBindInfo);
    FUNC0(ReportResult);
}