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
struct wndclass_redirect_data {int name_offset; } ;
struct strsection_header {int count; int size; } ;
typedef  int /*<<< orphan*/  data2 ;
typedef  int /*<<< orphan*/  data ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_4__ {int cbSize; scalar_t__ lpData; int /*<<< orphan*/  ulSectionTotalLength; scalar_t__ lpSectionBase; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;
typedef  TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  manifest_wndcls1 ; 
 int /*<<< orphan*/  manifest_wndcls2 ; 
 int /*<<< orphan*/  manifest_wndcls_main ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 char const* wndClass1W ; 
 char const* wndClass3W ; 

__attribute__((used)) static void FUNC12(void)
{
    static const WCHAR cls1W[] = {'1','.','2','.','3','.','4','!','w','n','d','C','l','a','s','s','1',0};
    ACTCTX_SECTION_KEYED_DATA data, data2;
    struct wndclass_redirect_data *classdata;
    struct strsection_header *section;
    ULONG_PTR cookie;
    HANDLE handle;
    WCHAR *ptrW;
    BOOL ret;

    /* use two dependent manifests, each defines 2 window class redirects */
    FUNC2("testdep1.manifest", manifest_wndcls1, -1, NULL, NULL);
    FUNC2("testdep2.manifest", manifest_wndcls2, -1, NULL, NULL);
    FUNC2("main_wndcls.manifest", manifest_wndcls_main, -1, NULL, NULL);

    handle = FUNC10("main_wndcls.manifest");
    FUNC5(handle != INVALID_HANDLE_VALUE, "handle == INVALID_HANDLE_VALUE, error %u\n", FUNC1());

    FUNC0("testdep1.manifest");
    FUNC0("testdep2.manifest");
    FUNC0("main_wndcls.manifest");

    ret = FUNC6(handle, &cookie);
    FUNC5(ret, "ActivateActCtx failed: %u\n", FUNC1());

    FUNC4(&data, 0, sizeof(data));
    FUNC4(&data2, 0, sizeof(data2));
    data.cbSize = sizeof(data);
    data2.cbSize = sizeof(data2);

    /* get data for two classes from different assemblies */
    ret = FUNC8(0, NULL,
                                    ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION,
                                    wndClass1W, &data);
    FUNC5(ret, "got %d\n", ret);
    ret = FUNC8(0, NULL,
                                    ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION,
                                    wndClass3W, &data2);
    FUNC5(ret, "got %d\n", ret);

    section = (struct strsection_header*)data.lpSectionBase;
    FUNC5(section->count == 4, "got %d\n", section->count);
    FUNC5(section->size == sizeof(*section), "got %d\n", section->size);

    /* For both string same section is returned, meaning it's one wndclass section per context */
    FUNC5(data.lpSectionBase == data2.lpSectionBase, "got %p, %p\n", data.lpSectionBase, data2.lpSectionBase);
    FUNC5(data.ulSectionTotalLength == data2.ulSectionTotalLength, "got %u, %u\n", data.ulSectionTotalLength,
        data2.ulSectionTotalLength);

    /* wndClass1 is versioned, wndClass3 is not */
    classdata = (struct wndclass_redirect_data*)data.lpData;
    ptrW = (WCHAR*)((BYTE*)data.lpData + classdata->name_offset);
    FUNC5(!FUNC3(ptrW, cls1W), "got %s\n", FUNC11(ptrW));

    classdata = (struct wndclass_redirect_data*)data2.lpData;
    ptrW = (WCHAR*)((BYTE*)data2.lpData + classdata->name_offset);
    FUNC5(!FUNC3(ptrW, wndClass3W), "got %s\n", FUNC11(ptrW));

    ret = FUNC7(0, cookie);
    FUNC5(ret, "DeactivateActCtx failed: %u\n", FUNC1());

    FUNC9(handle);
}