
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int ) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 void* GetResource (int ,int *) ;
 int GetTempFileNameW (int *,char*,int ,int ) ;
 int GetTempPathW (int,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int WriteFile (scalar_t__,void*,int ,int *,int *) ;

__attribute__((used)) static BOOL ExtractTTFFile(LPCWSTR FontName, LPWSTR TempFile)
{
    WCHAR TempPath[MAX_PATH];
    HANDLE hFile;
    void *Data;
    DWORD Size;
    BOOL ret;

    Data = GetResource(FontName, &Size);
    if (!Data) return FALSE;

    GetTempPathW(MAX_PATH, TempPath);
    GetTempFileNameW(TempPath, L"ttf", 0, TempFile);

    hFile = CreateFileW(TempFile, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
    if (hFile == INVALID_HANDLE_VALUE) return FALSE;

    ret = WriteFile(hFile, Data, Size, &Size, ((void*)0));

    CloseHandle(hFile);
    return ret;
}
