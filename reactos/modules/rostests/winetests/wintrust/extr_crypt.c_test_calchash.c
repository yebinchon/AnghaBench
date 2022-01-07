
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expectedhash ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BYTE ;
typedef int BOOL ;


 int CURR_DIR ;
 int CloseHandle (int *) ;
 int * CreateFileA (int *,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (int *) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetTempFileNameA (int ,char*,int ,int *) ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int * INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int SetLastError (int) ;
 int WriteFile (int *,char*,int,int*,int *) ;
 int memcmp (int*,int*,int) ;
 int ok (int,char*,...) ;
 int pCryptCATAdminCalcHashFromFileHandle (int *,int*,int*,int) ;
 int * selfname ;

__attribute__((used)) static void test_calchash(void)
{
    BOOL ret;
    HANDLE file;
    DWORD hashsize = 0;
    BYTE* hash;
    BYTE expectedhash[20] = {0x3a,0xa1,0x19,0x08,0xec,0xa6,0x0d,0x2e,0x7e,0xcc,0x7a,0xca,0xf5,0xb8,0x2e,0x62,0x6a,0xda,0xf0,0x19};
    CHAR temp[MAX_PATH];
    DWORD written;


    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(((void*)0), ((void*)0), ((void*)0), 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(((void*)0), &hashsize, ((void*)0), 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    file = CreateFileA(selfname, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(file, ((void*)0), ((void*)0), 0);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    CloseHandle(file);


    file = CreateFileA(selfname, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(file, &hashsize, ((void*)0), 1);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    CloseHandle(file);


    file = CreateFileA(selfname, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed %u\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(file, &hashsize, ((void*)0), 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());
    ok(hashsize == 20," Expected a hash size of 20, got %d\n", hashsize);
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER,
       "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    CloseHandle(file);




    file = CreateFileA(selfname, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    hashsize *= 2;
    hash = HeapAlloc(GetProcessHeap(), 0, hashsize);
    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(file, &hashsize, hash, 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());
    ok(hashsize == 20," Expected a hash size of 20, got %d\n", hashsize);
    ok(GetLastError() == ERROR_SUCCESS,
       "Expected ERROR_SUCCESS, got %d\n", GetLastError());
    CloseHandle(file);
    HeapFree(GetProcessHeap(), 0, hash);




    GetTempFileNameA(CURR_DIR, "hsh", 0, temp);
    file = CreateFileA(temp, GENERIC_WRITE, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    WriteFile(file, "Text in this file is needed to create a know hash", 49, &written, ((void*)0));
    CloseHandle(file);


    file = CreateFileA(temp, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    hashsize = 0;
    pCryptCATAdminCalcHashFromFileHandle(file, &hashsize, ((void*)0), 0);
    hash = HeapAlloc(GetProcessHeap(), 0, hashsize);
    SetLastError(0xdeadbeef);
    ret = pCryptCATAdminCalcHashFromFileHandle(file, &hashsize, hash, 0);
    ok(ret, "Expected success, got FALSE with %d\n", GetLastError());
    ok(GetLastError() == ERROR_SUCCESS,
       "Expected ERROR_SUCCESS, got %d\n", GetLastError());
    ok(hashsize == sizeof(expectedhash) &&
       !memcmp(hash, expectedhash, sizeof(expectedhash)),
       "Hashes didn't match\n");
    CloseHandle(file);

    HeapFree(GetProcessHeap(), 0, hash);
    DeleteFileA(temp);
}
