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
struct tlibredirect_data {int size; int major_version; int minor_version; int help_offset; int help_len; int flags; } ;
struct guidsection_header {int count; int size; int names_offset; int names_len; } ;
typedef  int /*<<< orphan*/  helpW ;
typedef  int /*<<< orphan*/  data2 ;
typedef  int /*<<< orphan*/  data ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_4__ {int cbSize; int ulSectionGlobalDataLength; scalar_t__ lpData; int /*<<< orphan*/ * lpSectionGlobalData; int /*<<< orphan*/  ulSectionTotalLength; scalar_t__ lpSectionBase; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;
typedef  TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  IID_TlibTest ; 
 int /*<<< orphan*/  IID_TlibTest4 ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int LIBFLAG_FCONTROL ; 
 int LIBFLAG_FHIDDEN ; 
 int LIBFLAG_FRESTRICTED ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  manifest_wndcls1 ; 
 int /*<<< orphan*/  manifest_wndcls2 ; 
 int /*<<< orphan*/  manifest_wndcls_main ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const WCHAR helpW[] = {'h','e','l','p'};
    ACTCTX_SECTION_KEYED_DATA data, data2;
    struct guidsection_header *section;
    struct tlibredirect_data *tlib;
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

    /* get data for two typelibs from different assemblies */
    ret = FUNC7(0, NULL,
                                 ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION,
                                 &IID_TlibTest, &data);
    FUNC4(ret, "got %d\n", ret);

    ret = FUNC7(0, NULL,
                                 ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION,
                                 &IID_TlibTest4, &data2);
    FUNC4(ret, "got %d\n", ret);

    section = (struct guidsection_header*)data.lpSectionBase;
    FUNC4(section->count == 4, "got %d\n", section->count);
    FUNC4(section->size == sizeof(*section), "got %d\n", section->size);

    /* For both GUIDs same section is returned */
    FUNC4(data.lpSectionBase == data2.lpSectionBase, "got %p, %p\n", data.lpSectionBase, data2.lpSectionBase);
    FUNC4(data.ulSectionTotalLength == data2.ulSectionTotalLength, "got %u, %u\n", data.ulSectionTotalLength,
        data2.ulSectionTotalLength);

    FUNC4(data.lpSectionGlobalData == ((BYTE*)section + section->names_offset), "data.lpSectionGlobalData == NULL\n");
    FUNC4(data.ulSectionGlobalDataLength == section->names_len, "data.ulSectionGlobalDataLength=%u\n",
       data.ulSectionGlobalDataLength);

    /* test some actual data */
    tlib = (struct tlibredirect_data*)data.lpData;
    FUNC4(tlib->size == sizeof(*tlib), "got %d\n", tlib->size);
    FUNC4(tlib->major_version == 1, "got %d\n", tlib->major_version);
    FUNC4(tlib->minor_version == 0, "got %d\n", tlib->minor_version);
    FUNC4(tlib->help_offset > 0, "got %d\n", tlib->help_offset);
    FUNC4(tlib->help_len == sizeof(helpW), "got %d\n", tlib->help_len);
    FUNC4(tlib->flags == (LIBFLAG_FHIDDEN|LIBFLAG_FCONTROL|LIBFLAG_FRESTRICTED), "got %x\n", tlib->flags);

    ret = FUNC6(0, cookie);
    FUNC4(ret, "DeactivateActCtx failed: %u\n", FUNC1());

    FUNC8(handle);
}