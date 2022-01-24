#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  data ;
struct TYPE_3__ {int member_0; int cbSize; } ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;

/* Variables and functions */
 int ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SXS_KEY_NOT_FOUND ; 
 scalar_t__ ERROR_SXS_SECTION_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * testlib2_dll ; 
 int /*<<< orphan*/ * testlib_dll ; 

__attribute__((used)) static void FUNC3(void)
{
    ACTCTX_SECTION_KEYED_DATA data = {sizeof(data)};
    BOOL ret;

    ret = FUNC2(0, NULL, 100, testlib_dll, &data);
    FUNC1(!ret, "FindActCtxSectionStringW succeeded\n");
    FUNC1(FUNC0() == ERROR_SXS_SECTION_NOT_FOUND, "GetLastError()=%u\n", FUNC0());

    ret = FUNC2(0, NULL, ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib2_dll, &data);
    FUNC1(!ret, "FindActCtxSectionStringW succeeded\n");
    FUNC1(FUNC0() == ERROR_SXS_KEY_NOT_FOUND, "GetLastError()=%u\n", FUNC0());

    ret = FUNC2(0, NULL, ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib_dll, NULL);
    FUNC1(!ret, "FindActCtxSectionStringW succeeded\n");
    FUNC1(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", FUNC0());

    ret = FUNC2(0, NULL, ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    NULL, &data);
    FUNC1(!ret, "FindActCtxSectionStringW succeeded\n");
    FUNC1(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", FUNC0());

    data.cbSize = 0;
    ret = FUNC2(0, NULL, ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib_dll, &data);
    FUNC1(!ret, "FindActCtxSectionStringW succeeded\n");
    FUNC1(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", FUNC0());

    data.cbSize = 35;
    ret = FUNC2(0, NULL, ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib_dll, &data);
    FUNC1(!ret, "FindActCtxSectionStringW succeeded\n");
    FUNC1(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", FUNC0());
}