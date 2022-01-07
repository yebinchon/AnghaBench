
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {scalar_t__ Preinstalled; int File; } ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int HRSRC ;
typedef int HMODULE ;
typedef int HGLOBAL ;
typedef int HANDLE ;
typedef TYPE_1__ GFRI_ENTRY ;
typedef int DWORD ;
typedef int BOOL ;


 int AddFontResourceW (int *) ;
 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileW (int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FindResourceW (int ,int ,int ) ;
 int GENERIC_WRITE ;
 scalar_t__ GetFileAttributesW (int *) ;
 int GetModuleHandleW (int *) ;
 int GetSystemFontPath (int *,int ) ;
 int GetTempFileNameW (int *,char*,int ,int *) ;
 int GetTempPathW (int ,int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int LoadResource (int ,int ) ;
 int LockResource (int ) ;
 int MAX_PATH ;
 scalar_t__ RT_RCDATA ;
 int RemoveFontResourceW (int *) ;
 int SizeofResource (int ,int ) ;
 int Test_GetFontResourceInfoW_case0 (int *,TYPE_1__ const*) ;
 int Test_GetFontResourceInfoW_case1 (int *,TYPE_1__ const*) ;
 int Test_GetFontResourceInfoW_case2 (int *,TYPE_1__ const*) ;
 int Test_GetFontResourceInfoW_case3 (int *,TYPE_1__ const*) ;
 int Test_GetFontResourceInfoW_case4 (int *,TYPE_1__ const*) ;
 int Test_GetFontResourceInfoW_case5 (int *,TYPE_1__ const*) ;
 int WriteFile (int ,int ,int ,int *,int *) ;
 int _countof (int *) ;
 int printf (char*,int *) ;
 int skip (char*,int *) ;

__attribute__((used)) static void
DoEntry(const GFRI_ENTRY *Entry)
{
    WCHAR szPath[MAX_PATH], szTempPath[MAX_PATH];
    BOOL Installed = FALSE;

    if (Entry->Preinstalled)
    {
        GetSystemFontPath(szPath, Entry->File);
        printf("GetSystemFontPath: %S\n", szPath);
        if (GetFileAttributesW(szPath) == INVALID_FILE_ATTRIBUTES)
        {
            skip("Font file \"%S\" was not found\n", szPath);
            return;
        }
    }
    else
    {

        HANDLE hFile;
        HMODULE hMod = GetModuleHandleW(((void*)0));
        HRSRC hRsrc = FindResourceW(hMod, Entry->File, (LPCWSTR)RT_RCDATA);
        HGLOBAL hGlobal = LoadResource(hMod, hRsrc);
        DWORD Size = SizeofResource(hMod, hRsrc);
        LPVOID pFont = LockResource(hGlobal);


        GetTempPathW(_countof(szTempPath), szTempPath);
        GetTempFileNameW(szTempPath, L"FNT", 0, szPath);
        printf("GetTempFileNameW: %S\n", szPath);


        hFile = CreateFileW(szPath, GENERIC_WRITE, FILE_SHARE_READ, ((void*)0),
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
        WriteFile(hFile, pFont, Size, &Size, ((void*)0));
        CloseHandle(hFile);


        if (GetFileAttributesW(szPath) == INVALID_FILE_ATTRIBUTES)
        {
            skip("Font file \"%S\" was not stored\n", szPath);
            return;
        }


        Installed = !!AddFontResourceW(szPath);
        if (!Installed)
        {
            skip("Font file \"%S\" was not installed\n", szPath);
            RemoveFontResourceW(szPath);
            DeleteFileW(szPath);
            return;
        }
    }

    Test_GetFontResourceInfoW_case0(szPath, Entry);
    Test_GetFontResourceInfoW_case1(szPath, Entry);
    Test_GetFontResourceInfoW_case2(szPath, Entry);
    Test_GetFontResourceInfoW_case3(szPath, Entry);
    Test_GetFontResourceInfoW_case4(szPath, Entry);
    Test_GetFontResourceInfoW_case5(szPath, Entry);

    if (!Entry->Preinstalled)
    {
        if (Installed)
        {
            RemoveFontResourceW(szPath);
            DeleteFileW(szPath);
        }
    }
}
