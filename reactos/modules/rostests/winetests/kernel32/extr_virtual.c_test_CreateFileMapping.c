
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int * CreateFileMappingA (int ,int *,int,int ,int,char*) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int FALSE ;
 int FILE_MAP_ALL_ACCESS ;
 scalar_t__ GetLastError () ;
 int INVALID_HANDLE_VALUE ;
 int * OpenFileMappingA (int ,int ,char*) ;
 int PAGE_READWRITE ;
 int SEC_COMMIT ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_CreateFileMapping(void)
{
    HANDLE handle, handle2;



    SetLastError(0xdeadbeef);
    handle = CreateFileMappingA( INVALID_HANDLE_VALUE, ((void*)0), SEC_COMMIT | PAGE_READWRITE, 0, 0x1000,
                                 "Wine Test Mapping");
    ok( handle != ((void*)0), "CreateFileMapping failed with error %u\n", GetLastError());
    ok( GetLastError() == 0, "wrong error %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    handle2 = CreateFileMappingA( INVALID_HANDLE_VALUE, ((void*)0), SEC_COMMIT | PAGE_READWRITE, 0, 0x1000,
                                  "Wine Test Mapping");
    ok( handle2 != ((void*)0), "CreateFileMapping failed with error %d\n", GetLastError());
    ok( GetLastError() == ERROR_ALREADY_EXISTS, "wrong error %u\n", GetLastError());
    CloseHandle( handle2 );

    SetLastError(0xdeadbeef);
    handle2 = CreateFileMappingA( INVALID_HANDLE_VALUE, ((void*)0), SEC_COMMIT | PAGE_READWRITE, 0, 0x1000,
                                 "WINE TEST MAPPING");
    ok( handle2 != ((void*)0), "CreateFileMapping failed with error %d\n", GetLastError());
    ok( GetLastError() == 0, "wrong error %u\n", GetLastError());
    CloseHandle( handle2 );

    SetLastError(0xdeadbeef);
    handle2 = OpenFileMappingA( FILE_MAP_ALL_ACCESS, FALSE, "Wine Test Mapping");
    ok( handle2 != ((void*)0), "OpenFileMapping failed with error %d\n", GetLastError());
    CloseHandle( handle2 );

    SetLastError(0xdeadbeef);
    handle2 = OpenFileMappingA( FILE_MAP_ALL_ACCESS, FALSE, "WINE TEST MAPPING");
    ok( !handle2, "OpenFileMapping succeeded\n");
    ok( GetLastError() == ERROR_FILE_NOT_FOUND, "wrong error %u\n", GetLastError());

    CloseHandle( handle );
}
