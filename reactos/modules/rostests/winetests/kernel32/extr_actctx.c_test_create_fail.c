
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int cbSize; int * lpSource; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ ACTCTXW ;


 int CP_ACP ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int TRUE ;
 int manifest1 ;
 int manifest2 ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateActCtxW (TYPE_1__*) ;
 int test_create_and_fail (int ,int *,int,int ) ;
 int test_create_wide_and_fail (int ,int ) ;
 int trace (char*) ;
 int * wrong_depmanifest1 ;
 int wrong_manifest1 ;
 int wrong_manifest10 ;
 int wrong_manifest2 ;
 int wrong_manifest3 ;
 int wrong_manifest4 ;
 int wrong_manifest5 ;
 int wrong_manifest6 ;
 int wrong_manifest7 ;
 int wrong_manifest8 ;
 int wrong_manifest9 ;

__attribute__((used)) static void test_create_fail(void)
{
    ACTCTXW actctx;
    HANDLE handle;
    WCHAR path[MAX_PATH];

    MultiByteToWideChar( CP_ACP, 0, "nonexistent.manifest", -1, path, MAX_PATH );
    memset(&actctx, 0, sizeof(ACTCTXW));
    actctx.cbSize = sizeof(ACTCTXW);
    actctx.lpSource = path;

    handle = pCreateActCtxW(&actctx);
    ok(handle == INVALID_HANDLE_VALUE, "handle != INVALID_HANDLE_VALUE\n");
    ok(GetLastError() == ERROR_FILE_NOT_FOUND, "GetLastError == %u\n", GetLastError());

    trace("wrong_manifest1\n");
    test_create_and_fail(wrong_manifest1, ((void*)0), 0, FALSE);
    trace("wrong_manifest2\n");
    test_create_and_fail(wrong_manifest2, ((void*)0), 0, FALSE);
    trace("wrong_manifest3\n");
    test_create_and_fail(wrong_manifest3, ((void*)0), 1, FALSE);
    trace("wrong_manifest4\n");
    test_create_and_fail(wrong_manifest4, ((void*)0), 1, FALSE);
    trace("wrong_manifest5\n");
    test_create_and_fail(wrong_manifest5, ((void*)0), 0, FALSE);
    trace("wrong_manifest6\n");
    test_create_and_fail(wrong_manifest6, ((void*)0), 0, FALSE);
    trace("wrong_manifest7\n");
    test_create_and_fail(wrong_manifest7, ((void*)0), 1, FALSE);
    trace("wrong_manifest8\n");
    test_create_and_fail(wrong_manifest8, ((void*)0), 0, FALSE);
    trace("wrong_manifest9\n");
    test_create_and_fail(wrong_manifest9, ((void*)0), 0, TRUE );
    trace("wrong_manifest10\n");
    test_create_and_fail(wrong_manifest10, ((void*)0), 0, TRUE );
    trace("UTF-16 manifest1 without BOM\n");
    test_create_wide_and_fail(manifest1, FALSE );
    trace("manifest2\n");
    test_create_and_fail(manifest2, ((void*)0), 0, FALSE);
    trace("manifest2+depmanifest1\n");
    test_create_and_fail(manifest2, wrong_depmanifest1, 0, FALSE);
}
