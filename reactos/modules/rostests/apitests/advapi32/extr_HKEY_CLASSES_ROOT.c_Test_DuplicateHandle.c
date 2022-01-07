
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHANDLE ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int *,int ,int ,int ,int ,int ) ;
 int ERROR_SUCCESS ;
 int GetCurrentProcess () ;
 int HKEY_CLASSES_ROOT ;
 int IS_HKCR (int *) ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 int RegOpenKeyExW (int ,char*,int ,int ,int **) ;
 int ok (int,char*) ;
 int ok_dec (int ,int ) ;

__attribute__((used)) static
void
Test_DuplicateHandle(void)
{
    HKEY KeyHandle, DupHandle;
    DWORD ErrorCode;
    BOOL Duplicated;

    ErrorCode = RegOpenKeyExW(HKEY_CLASSES_ROOT, L"CLSID", 0, KEY_READ, &KeyHandle);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ok(IS_HKCR(KeyHandle), "\n");

    Duplicated = DuplicateHandle(GetCurrentProcess(), KeyHandle, GetCurrentProcess(), (PHANDLE)&DupHandle, 0, 0, DUPLICATE_SAME_ACCESS);
    ok(Duplicated, "\n");
    ok(DupHandle != ((void*)0), "\n");
    ok(!IS_HKCR(DupHandle), "\n");

    RegCloseKey(KeyHandle);
    RegCloseKey(DupHandle);
}
