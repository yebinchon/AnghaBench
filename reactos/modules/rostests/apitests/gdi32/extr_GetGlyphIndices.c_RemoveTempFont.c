
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPWSTR ;
typedef int BOOL ;


 int DeleteFileW (int ) ;
 int FR_PRIVATE ;
 int GetLastError () ;
 int RemoveFontResourceExW (int ,int ,int ) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static VOID RemoveTempFont(LPWSTR TempFile)
{
    BOOL Success;
    Success = RemoveFontResourceExW(TempFile, FR_PRIVATE, 0);
    ok(Success, "RemoveFontResourceEx() failed, we're leaving fonts installed : %lu\n", GetLastError());
    DeleteFileW(TempFile);
}
