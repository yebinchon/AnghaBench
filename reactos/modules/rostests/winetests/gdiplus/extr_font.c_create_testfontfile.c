
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCSTR ;
typedef scalar_t__ HRSRC ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int,int ,int *,int ,int ,int ) ;
 scalar_t__ FindResourceA (int ,int ,int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetModuleHandleA (int *) ;
 int GetTempPathW (int ,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LoadResource (int ,scalar_t__) ;
 void* LockResource (int ) ;
 int MAKEINTRESOURCEA (int) ;
 int MAX_PATH ;
 scalar_t__ RT_RCDATA ;
 scalar_t__ SizeofResource (int ,scalar_t__) ;
 int WriteFile (scalar_t__,void*,scalar_t__,scalar_t__*,int *) ;
 int lstrcatW (int *,int const*) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void create_testfontfile(const WCHAR *filename, int resource, WCHAR pathW[MAX_PATH])
{
    DWORD written;
    HANDLE file;
    HRSRC res;
    void *ptr;

    GetTempPathW(MAX_PATH, pathW);
    lstrcatW(pathW, filename);

    file = CreateFileW(pathW, GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0);
    ok(file != INVALID_HANDLE_VALUE, "file creation failed, at %s, error %d\n", wine_dbgstr_w(pathW), GetLastError());

    res = FindResourceA(GetModuleHandleA(((void*)0)), MAKEINTRESOURCEA(resource), (LPCSTR)RT_RCDATA);
    ok(res != 0, "couldn't find resource\n");
    ptr = LockResource(LoadResource(GetModuleHandleA(((void*)0)), res));
    WriteFile(file, ptr, SizeofResource(GetModuleHandleA(((void*)0)), res), &written, ((void*)0));
    ok(written == SizeofResource(GetModuleHandleA(((void*)0)), res), "couldn't write resource\n");
    CloseHandle(file);
}
