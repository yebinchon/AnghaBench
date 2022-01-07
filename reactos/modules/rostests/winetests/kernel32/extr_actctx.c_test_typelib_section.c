
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tlibredirect_data {int size; int major_version; int minor_version; int help_offset; int help_len; int flags; } ;
struct guidsection_header {int count; int size; int names_offset; int names_len; } ;
typedef int helpW ;
typedef int data2 ;
typedef int data ;
typedef char WCHAR ;
typedef int ULONG_PTR ;
struct TYPE_4__ {int cbSize; int ulSectionGlobalDataLength; scalar_t__ lpData; int * lpSectionGlobalData; int ulSectionTotalLength; scalar_t__ lpSectionBase; } ;
typedef scalar_t__ HANDLE ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;


 int ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION ;
 int DeleteFileA (char*) ;
 int GetLastError () ;
 int IID_TlibTest ;
 int IID_TlibTest4 ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LIBFLAG_FCONTROL ;
 int LIBFLAG_FHIDDEN ;
 int LIBFLAG_FRESTRICTED ;
 int create_manifest_file (char*,int ,int,int *,int *) ;
 int manifest_wndcls1 ;
 int manifest_wndcls2 ;
 int manifest_wndcls_main ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int pActivateActCtx (scalar_t__,int *) ;
 int pDeactivateActCtx (int ,int ) ;
 int pFindActCtxSectionGuid (int ,int *,int ,int *,TYPE_1__*) ;
 int pReleaseActCtx (scalar_t__) ;
 scalar_t__ test_create (char*) ;

__attribute__((used)) static void test_typelib_section(void)
{
    static const WCHAR helpW[] = {'h','e','l','p'};
    ACTCTX_SECTION_KEYED_DATA data, data2;
    struct guidsection_header *section;
    struct tlibredirect_data *tlib;
    ULONG_PTR cookie;
    HANDLE handle;
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


    ret = pFindActCtxSectionGuid(0, ((void*)0),
                                 ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION,
                                 &IID_TlibTest, &data);
    ok(ret, "got %d\n", ret);

    ret = pFindActCtxSectionGuid(0, ((void*)0),
                                 ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION,
                                 &IID_TlibTest4, &data2);
    ok(ret, "got %d\n", ret);

    section = (struct guidsection_header*)data.lpSectionBase;
    ok(section->count == 4, "got %d\n", section->count);
    ok(section->size == sizeof(*section), "got %d\n", section->size);


    ok(data.lpSectionBase == data2.lpSectionBase, "got %p, %p\n", data.lpSectionBase, data2.lpSectionBase);
    ok(data.ulSectionTotalLength == data2.ulSectionTotalLength, "got %u, %u\n", data.ulSectionTotalLength,
        data2.ulSectionTotalLength);

    ok(data.lpSectionGlobalData == ((BYTE*)section + section->names_offset), "data.lpSectionGlobalData == NULL\n");
    ok(data.ulSectionGlobalDataLength == section->names_len, "data.ulSectionGlobalDataLength=%u\n",
       data.ulSectionGlobalDataLength);


    tlib = (struct tlibredirect_data*)data.lpData;
    ok(tlib->size == sizeof(*tlib), "got %d\n", tlib->size);
    ok(tlib->major_version == 1, "got %d\n", tlib->major_version);
    ok(tlib->minor_version == 0, "got %d\n", tlib->minor_version);
    ok(tlib->help_offset > 0, "got %d\n", tlib->help_offset);
    ok(tlib->help_len == sizeof(helpW), "got %d\n", tlib->help_len);
    ok(tlib->flags == (LIBFLAG_FHIDDEN|LIBFLAG_FCONTROL|LIBFLAG_FRESTRICTED), "got %x\n", tlib->flags);

    ret = pDeactivateActCtx(0, cookie);
    ok(ret, "DeactivateActCtx failed: %u\n", GetLastError());

    pReleaseActCtx(handle);
}
