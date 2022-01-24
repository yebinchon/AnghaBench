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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GetBindInfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReportResult ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_info ; 
 int /*<<< orphan*/  expect_hrResult ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  protocol_sink ; 

__attribute__((used)) static void FUNC4(IInternetProtocol *protocol, LPCWSTR url, HRESULT expected_hres)
{
    HRESULT hres;

    FUNC2(GetBindInfo);
    FUNC2(ReportResult);

    expect_hrResult = expected_hres;
    hres = FUNC1(protocol, url, &protocol_sink, &bind_info, 0, 0);
    FUNC3(hres == expected_hres, "expected: %08x got: %08x\n", expected_hres, hres);

    FUNC0(GetBindInfo);
    FUNC0(ReportResult);
}