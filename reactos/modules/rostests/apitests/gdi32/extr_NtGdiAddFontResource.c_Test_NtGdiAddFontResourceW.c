
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lpszFontSearch ;
typedef int lpszFontPath ;
struct TYPE_7__ {char* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
struct TYPE_8__ {int Length; int Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
typedef int ULONG ;
typedef int PVOID ;
typedef int INT ;
typedef scalar_t__ HANDLE ;


 scalar_t__ FindFirstFileW (int *,TYPE_1__*) ;
 int GetLastError () ;
 int GetWindowsDirectoryW (int *,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int NtGdiAddFontResourceW (int ,int,int,int ,int ,int *) ;
 int RtlDosPathNameToNtPathName_U (int *,TYPE_2__*,int *,int *) ;
 int RtlFreeUnicodeString (TYPE_2__*) ;
 int RtlInitUnicodeString (TYPE_2__*,int *) ;
 int SetLastError (int) ;
 int StringCbCatW (int *,int,char*) ;
 int StringCbCopyW (int *,int,int *) ;
 int ok (int,char*,int) ;
 int skip (char*) ;

void Test_NtGdiAddFontResourceW()
{
    WCHAR lpszFontPath[MAX_PATH];
    WCHAR lpszFontSearch[MAX_PATH];

    INT ret;
    UNICODE_STRING NtAbsPath;
    WIN32_FIND_DATAW FindFileData;
    HANDLE hFind;
    ULONG cwc;


    GetWindowsDirectoryW(lpszFontPath, MAX_PATH);
    StringCbCatW(lpszFontPath, sizeof(lpszFontPath), L"\\Fonts\\");


    StringCbCopyW(lpszFontSearch, sizeof(lpszFontSearch), lpszFontPath);
    StringCbCatW(lpszFontSearch, sizeof(lpszFontSearch), L"*.ttf");

    hFind = FindFirstFileW(lpszFontSearch, &FindFileData);

    if (hFind == INVALID_HANDLE_VALUE)
    {
        skip("Unable to find fonts in Font directory!\n");
        return;
    }


    StringCbCatW(lpszFontPath, sizeof(lpszFontPath), FindFileData.cFileName);


    SetLastError(0xdeaddead);
    RtlInitUnicodeString(&NtAbsPath, ((void*)0));
    RtlDosPathNameToNtPathName_U(lpszFontPath, &NtAbsPath, ((void*)0), ((void*)0));
    cwc = 0;
    ret = NtGdiAddFontResourceW(NtAbsPath.Buffer, cwc, 1, 0, 0, 0);

    ok(ret == 0, "Expected 0 files added. Added: %d\n", ret);
    ok(GetLastError() == 0xdeaddead, "Expected 0xdeaddead. Obtained: 0x%lx\n", GetLastError());

    RtlFreeUnicodeString(&NtAbsPath);


    SetLastError(0xdeaddead);
    RtlInitUnicodeString(&NtAbsPath, ((void*)0));
    RtlDosPathNameToNtPathName_U(lpszFontPath, &NtAbsPath, ((void*)0), ((void*)0));
    cwc = NtAbsPath.Length / sizeof(WCHAR);
    ret = NtGdiAddFontResourceW(NtAbsPath.Buffer, cwc, 1, 0, 0, 0);

    ok(ret == 0, "Expected 0 files added. Added: %d\n", ret);
    ok(GetLastError() == 0xdeaddead, "Expected 0xdeaddead. Obtained: 0x%lx\n", GetLastError());

    RtlFreeUnicodeString(&NtAbsPath);


    SetLastError(0xdeaddead);
    RtlInitUnicodeString(&NtAbsPath, ((void*)0));
    RtlDosPathNameToNtPathName_U(lpszFontPath, &NtAbsPath, ((void*)0), ((void*)0));
    cwc = NtAbsPath.Length / sizeof(WCHAR) + 1;
    ret = NtGdiAddFontResourceW(NtAbsPath.Buffer, cwc, 1, 0, 0, 0);

    ok(ret == 1, "Expected 1 files added. Added: %d\n", ret);
    ok(GetLastError() == 0xdeaddead, "Expected 0xdeaddead. Obtained: 0x%lx\n", GetLastError());

    RtlFreeUnicodeString(&NtAbsPath);


    SetLastError(0xdeadbeef);
    ret = NtGdiAddFontResourceW((PVOID)-4, 123, 1, 0, 0, ((void*)0));

    ok(ret == 0, "Expected 0 files added. Added: %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef. Obtained: 0x%lx\n", GetLastError());
}
