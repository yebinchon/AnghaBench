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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IEnumUnknown ;
typedef  int /*<<< orphan*/  ICLRRuntimeInfo ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ICLRRuntimeInfo ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  metahost ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    IEnumUnknown *runtime_enum;
    IUnknown *unk;
    DWORD count;
    ICLRRuntimeInfo *runtime_info;
    HRESULT hr;
    WCHAR buf[MAX_PATH];

    hr = FUNC2(metahost, &runtime_enum);
    FUNC9(hr == S_OK, "EnumerateInstalledRuntimes returned %x\n", hr);
    if (FUNC0(hr)) return;

    while ((hr = FUNC5(runtime_enum, 1, &unk, &count)) == S_OK)
    {
        hr = FUNC7(unk, &IID_ICLRRuntimeInfo, (void**)&runtime_info);
        FUNC9(hr == S_OK, "QueryInterface returned %x\n", hr);

        count = 1;
        hr = FUNC3(runtime_info, buf, &count);
        FUNC9(hr == FUNC1(ERROR_INSUFFICIENT_BUFFER), "GetVersionString returned %x\n", hr);
        FUNC9(count > 1, "GetVersionString returned count %u\n", count);

        count = 0xdeadbeef;
        hr = FUNC3(runtime_info, NULL, &count);
        FUNC9(hr == S_OK, "GetVersionString returned %x\n", hr);
        FUNC9(count > 1 && count != 0xdeadbeef, "GetVersionString returned count %u\n", count);

        count = MAX_PATH;
        hr = FUNC3(runtime_info, buf, &count);
        FUNC9(hr == S_OK, "GetVersionString returned %x\n", hr);
        FUNC9(count > 1, "GetVersionString returned count %u\n", count);

        FUNC10("runtime found: %s\n", FUNC11(buf));

        FUNC4(runtime_info);

        FUNC8(unk);
    }

    FUNC9(hr == S_FALSE, "IEnumUnknown_Next returned %x\n", hr);

    FUNC6(runtime_enum);
}