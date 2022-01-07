
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef void* HCATADMIN ;
typedef TYPE_2__ GUID ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int ERROR_ACCESS_DENIED ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ GetFileAttributesA (int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int * catroot ;
 int * catroot2 ;
 TYPE_2__ dummy ;
 int lstrcatA (int *,char*) ;
 int lstrcpyA (int *,int *) ;
 int ok (int,char*,...) ;
 int pCryptCATAdminAcquireContext (void**,TYPE_2__*,int) ;
 int pCryptCATAdminReleaseContext (void*,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_context(void)
{
    BOOL ret;
    HCATADMIN hca;
    static GUID unknown = { 0xC689AABA, 0x8E78, 0x11D0, { 0x8C,0x47,0x00,0xC0,0x4F,0xC2,0x95,0xEE }};
    CHAR dummydir[MAX_PATH];
    DWORD attrs;
    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminAcquireContext(((void*)0), ((void*)0), 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    if (0) {
    ret = pCryptCATAdminAcquireContext(&hca, ((void*)0), 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());
    ok(hca != ((void*)0), "Expected a context handle, got NULL\n");


    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminReleaseContext(hca, 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminReleaseContext(hca, 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    }


    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminReleaseContext(((void*)0), 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminAcquireContext(((void*)0), &dummy, 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    ret = pCryptCATAdminAcquireContext(&hca, &dummy, 0);
    ok(ret || GetLastError() == ERROR_ACCESS_DENIED, "CryptCATAdminAcquireContext failed %u\n", GetLastError());
    if (!ret && GetLastError() == ERROR_ACCESS_DENIED)
    {
        win_skip("Not running as administrator\n");
        return;
    }
    ok(hca != ((void*)0), "Expected a context handle, got NULL\n");

    attrs = GetFileAttributesA(catroot);
    ok(attrs != INVALID_FILE_ATTRIBUTES, "Expected the CatRoot directory to exist\n");


    lstrcpyA(dummydir, catroot);
    lstrcatA(dummydir, "\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}");
    attrs = GetFileAttributesA(dummydir);
    ok(attrs != INVALID_FILE_ATTRIBUTES,
       "Expected CatRoot\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF} directory to exist\n");


    attrs = GetFileAttributesA(catroot2);
    if (attrs != INVALID_FILE_ATTRIBUTES)
    {
        lstrcpyA(dummydir, catroot2);
        lstrcatA(dummydir, "\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}");
        attrs = GetFileAttributesA(dummydir);
        ok(attrs != INVALID_FILE_ATTRIBUTES,
            "Expected CatRoot2\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF} directory to exist\n");
    }

    ret = pCryptCATAdminReleaseContext(hca, 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());


    ret = pCryptCATAdminAcquireContext(&hca, &unknown, 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());
    ok(hca != ((void*)0), "Expected a context handle, got NULL\n");

    ret = pCryptCATAdminReleaseContext(hca, 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());

    hca = (void *) 0xdeadbeef;
    SetLastError(0xdeadbeef);

    ret = pCryptCATAdminAcquireContext(&hca, &unknown, 1);
    ok((!ret && (GetLastError() == ERROR_INVALID_PARAMETER) && (hca == (void *) 0xdeadbeef)) ||
        broken(ret && hca != ((void*)0) && hca != (void *) 0xdeadbeef),
        "Expected FALSE and ERROR_INVALID_PARAMETER with untouched handle, got %d and %u with %p\n",
        ret, GetLastError(), hca);

    if (ret && hca)
    {
        SetLastError(0xdeadbeef);
        ret = pCryptCATAdminReleaseContext(hca, 0);
        ok(ret, "Expected success, got FALSE with %d\n", GetLastError());
    }
}
