
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int cbSize; int * lpSource; } ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;
typedef TYPE_1__ ACTCTXW ;


 int CP_ACP ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_SXS_CANT_GEN_ACTCTX ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int create_wide_manifest (char*,char const*,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateActCtxW (TYPE_1__*) ;
 int pReleaseActCtx (scalar_t__) ;

__attribute__((used)) static void test_create_wide_and_fail(const char *manifest, BOOL fBOM)
{
    ACTCTXW actctx;
    HANDLE handle;
    WCHAR path[MAX_PATH];

    MultiByteToWideChar( CP_ACP, 0, "bad.manifest", -1, path, MAX_PATH );
    memset(&actctx, 0, sizeof(ACTCTXW));
    actctx.cbSize = sizeof(ACTCTXW);
    actctx.lpSource = path;

    create_wide_manifest("bad.manifest", manifest, fBOM, FALSE);
    handle = pCreateActCtxW(&actctx);
    ok(handle == INVALID_HANDLE_VALUE, "handle != INVALID_HANDLE_VALUE\n");
    ok(GetLastError() == ERROR_SXS_CANT_GEN_ACTCTX, "GetLastError == %u\n", GetLastError());

    if (handle != INVALID_HANDLE_VALUE) pReleaseActCtx( handle );
    DeleteFileA("bad.manifest");
}
