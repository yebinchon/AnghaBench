
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wndclass_redirect_data {int name_offset; } ;
struct strsection_header {int count; int size; } ;
typedef int data2 ;
typedef int data ;
typedef char WCHAR ;
typedef int ULONG_PTR ;
struct TYPE_4__ {int cbSize; scalar_t__ lpData; int ulSectionTotalLength; scalar_t__ lpSectionBase; } ;
typedef scalar_t__ HANDLE ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;


 int ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION ;
 int DeleteFileA (char*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int create_manifest_file (char*,int ,int,int *,int *) ;
 int lstrcmpW (char*,char const*) ;
 int manifest_wndcls1 ;
 int manifest_wndcls2 ;
 int manifest_wndcls_main ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int,...) ;
 int pActivateActCtx (scalar_t__,int *) ;
 int pDeactivateActCtx (int ,int ) ;
 int pFindActCtxSectionStringW (int ,int *,int ,char const*,TYPE_1__*) ;
 int pReleaseActCtx (scalar_t__) ;
 scalar_t__ test_create (char*) ;
 int wine_dbgstr_w (char*) ;
 char const* wndClass1W ;
 char const* wndClass3W ;

__attribute__((used)) static void test_wndclass_section(void)
{
    static const WCHAR cls1W[] = {'1','.','2','.','3','.','4','!','w','n','d','C','l','a','s','s','1',0};
    ACTCTX_SECTION_KEYED_DATA data, data2;
    struct wndclass_redirect_data *classdata;
    struct strsection_header *section;
    ULONG_PTR cookie;
    HANDLE handle;
    WCHAR *ptrW;
    BOOL ret;


    create_manifest_file("testdep1.manifest", manifest_wndcls1, -1, ((void*)0), ((void*)0));
    create_manifest_file("testdep2.manifest", manifest_wndcls2, -1, ((void*)0), ((void*)0));
    create_manifest_file("main_wndcls.manifest", manifest_wndcls_main, -1, ((void*)0), ((void*)0));

    handle = test_create("main_wndcls.manifest");
    ok(handle != INVALID_HANDLE_VALUE, "handle == INVALID_HANDLE_VALUE, error %u\n", GetLastError());

    DeleteFileA("testdep1.manifest");
    DeleteFileA("testdep2.manifest");
    DeleteFileA("main_wndcls.manifest");

    ret = pActivateActCtx(handle, &cookie);
    ok(ret, "ActivateActCtx failed: %u\n", GetLastError());

    memset(&data, 0, sizeof(data));
    memset(&data2, 0, sizeof(data2));
    data.cbSize = sizeof(data);
    data2.cbSize = sizeof(data2);


    ret = pFindActCtxSectionStringW(0, ((void*)0),
                                    ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION,
                                    wndClass1W, &data);
    ok(ret, "got %d\n", ret);
    ret = pFindActCtxSectionStringW(0, ((void*)0),
                                    ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION,
                                    wndClass3W, &data2);
    ok(ret, "got %d\n", ret);

    section = (struct strsection_header*)data.lpSectionBase;
    ok(section->count == 4, "got %d\n", section->count);
    ok(section->size == sizeof(*section), "got %d\n", section->size);


    ok(data.lpSectionBase == data2.lpSectionBase, "got %p, %p\n", data.lpSectionBase, data2.lpSectionBase);
    ok(data.ulSectionTotalLength == data2.ulSectionTotalLength, "got %u, %u\n", data.ulSectionTotalLength,
        data2.ulSectionTotalLength);


    classdata = (struct wndclass_redirect_data*)data.lpData;
    ptrW = (WCHAR*)((BYTE*)data.lpData + classdata->name_offset);
    ok(!lstrcmpW(ptrW, cls1W), "got %s\n", wine_dbgstr_w(ptrW));

    classdata = (struct wndclass_redirect_data*)data2.lpData;
    ptrW = (WCHAR*)((BYTE*)data2.lpData + classdata->name_offset);
    ok(!lstrcmpW(ptrW, wndClass3W), "got %s\n", wine_dbgstr_w(ptrW));

    ret = pDeactivateActCtx(0, cookie);
    ok(ret, "DeactivateActCtx failed: %u\n", GetLastError());

    pReleaseActCtx(handle);
}
