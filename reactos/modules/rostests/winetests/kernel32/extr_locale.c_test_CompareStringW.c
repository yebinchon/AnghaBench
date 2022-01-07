
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int CSTR_LESS_THAN ;
 int CompareStringW (int ,int ,char*,int,char*,int) ;
 int GetLastError () ;
 int GetSystemInfo (TYPE_1__*) ;
 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int PAGE_NOACCESS ;
 int PAGE_READWRITE ;
 char* VirtualAlloc (int *,int,int ,int ) ;
 int VirtualFree (char*,int ,int ) ;
 int VirtualProtect (char*,int,int ,int *) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_CompareStringW(void)
{
    WCHAR *str1, *str2;
    SYSTEM_INFO si;
    DWORD old_prot;
    BOOL success;
    char *buf;
    int ret;

    GetSystemInfo(&si);
    buf = VirtualAlloc(((void*)0), si.dwPageSize * 4, MEM_COMMIT, PAGE_READWRITE);
    ok(buf != ((void*)0), "VirtualAlloc failed with %u\n", GetLastError());
    success = VirtualProtect(buf + si.dwPageSize, si.dwPageSize, PAGE_NOACCESS, &old_prot);
    ok(success, "VirtualProtect failed with %u\n", GetLastError());
    success = VirtualProtect(buf + 3 * si.dwPageSize, si.dwPageSize, PAGE_NOACCESS, &old_prot);
    ok(success, "VirtualProtect failed with %u\n", GetLastError());

    str1 = (WCHAR *)(buf + si.dwPageSize - sizeof(WCHAR));
    str2 = (WCHAR *)(buf + 3 * si.dwPageSize - sizeof(WCHAR));
    *str1 = 'A';
    *str2 = 'B';


    ret = CompareStringW(CP_ACP, 0, str1, 100, str2, 100);
    ok(ret == CSTR_LESS_THAN, "expected CSTR_LESS_THAN, got %d\n", ret);

    success = VirtualFree(buf, 0, MEM_RELEASE);
    ok(success, "VirtualFree failed with %u\n", GetLastError());
}
