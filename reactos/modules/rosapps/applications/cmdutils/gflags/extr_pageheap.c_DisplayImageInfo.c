
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PWSTR ;
typedef void** PBOOL ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef void* BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 void* FALSE ;
 int FLG_HEAP_PAGE_ALLOCS ;
 int * Image ;
 char* ImageExecOptionsString ;
 int KEY_READ ;
 int ReadSZFlagsFromRegistry (int ,char*) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 void* TRUE ;
 int wprintf (char*,...) ;

__attribute__((used)) static BOOL DisplayImageInfo(HKEY HandleKey, PWSTR SubKey, PBOOL Header)
{
    LONG Ret;
    BOOL Handled;
    DWORD GlobalFlags;
    HKEY HandleSubKey;

    Ret = RegOpenKeyExW(HandleKey, SubKey, 0, KEY_READ, &HandleSubKey);
    if (Ret != ERROR_SUCCESS)
    {
        wprintf(L"DII: RegOpenKeyEx failed (%d)\n", Ret);
        return FALSE;
    }

    Handled = FALSE;
    GlobalFlags = ReadSZFlagsFromRegistry(HandleSubKey, L"GlobalFlag");
    if (GlobalFlags & FLG_HEAP_PAGE_ALLOCS)
    {
        DWORD PageHeapFlags;

        if (Image == ((void*)0))
        {
            if (!*Header)
            {
                wprintf(L"path: %s\n", ImageExecOptionsString);
                *Header = TRUE;
            }
            wprintf(L"\t%s: page heap enabled with flags (", SubKey);
        }
        else
        {
            wprintf(L"Page heap is enabled for %s with flags (", SubKey);
        }

        PageHeapFlags = ReadSZFlagsFromRegistry(HandleSubKey, L"PageHeapFlags");
        if (PageHeapFlags & 0x1)
        {
            wprintf(L"full ");
        }

        if (PageHeapFlags & 0x2)
        {
            wprintf(L"traces");
        }

        wprintf(L")\n");

        Handled = TRUE;
    }

    RegCloseKey(HandleSubKey);

    return Handled;
}
