#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strsection_header {int count; int size; } ;
typedef  int /*<<< orphan*/  data2 ;
typedef  int /*<<< orphan*/  data ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/  ulSectionTotalLength; scalar_t__ lpSectionBase; } ;
typedef  scalar_t__ HANDLE ;
typedef  int BOOL ;
typedef  TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  manifest_wndcls1 ; 
 int /*<<< orphan*/  manifest_wndcls2 ; 
 int /*<<< orphan*/  manifest_wndcls_main ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const WCHAR testlib1W[] = {'t','e','s','t','l','i','b','1','.','d','l','l',0};
    static const WCHAR testlib2W[] = {'t','e','s','t','l','i','b','2','.','d','l','l',0};
    ACTCTX_SECTION_KEYED_DATA data, data2;
    struct strsection_header *section;
    ULONG_PTR cookie;
    HANDLE handle;
    BOOL ret;

    /* use two dependent manifests, 4 'files' total */
    FUNC2("testdep1.manifest", manifest_wndcls1, -1, NULL, NULL);
    FUNC2("testdep2.manifest", manifest_wndcls2, -1, NULL, NULL);
    FUNC2("main_wndcls.manifest", manifest_wndcls_main, -1, NULL, NULL);

    handle = FUNC9("main_wndcls.manifest");
    FUNC4(handle != INVALID_HANDLE_VALUE, "handle == INVALID_HANDLE_VALUE, error %u\n", FUNC1());

    FUNC0("testdep1.manifest");
    FUNC0("testdep2.manifest");
    FUNC0("main_wndcls.manifest");

    ret = FUNC5(handle, &cookie);
    FUNC4(ret, "ActivateActCtx failed: %u\n", FUNC1());

    FUNC3(&data, 0, sizeof(data));
    FUNC3(&data2, 0, sizeof(data2));
    data.cbSize = sizeof(data);
    data2.cbSize = sizeof(data2);

    /* get data for two files from different assemblies */
    ret = FUNC7(0, NULL,
                                    ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib1W, &data);
    FUNC4(ret, "got %d\n", ret);
    ret = FUNC7(0, NULL,
                                    ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib2W, &data2);
    FUNC4(ret, "got %d\n", ret);

    section = (struct strsection_header*)data.lpSectionBase;
    FUNC4(section->count == 4, "got %d\n", section->count);
    FUNC4(section->size == sizeof(*section), "got %d\n", section->size);

    /* For both string same section is returned, meaning it's one dll redirect section per context */
    FUNC4(data.lpSectionBase == data2.lpSectionBase, "got %p, %p\n", data.lpSectionBase, data2.lpSectionBase);
    FUNC4(data.ulSectionTotalLength == data2.ulSectionTotalLength, "got %u, %u\n", data.ulSectionTotalLength,
        data2.ulSectionTotalLength);

    ret = FUNC6(0, cookie);
    FUNC4(ret, "DeactivateActCtx failed: %u\n", FUNC1());

    FUNC8(handle);
}