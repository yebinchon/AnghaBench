
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPITEMIDLIST ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CSIDL_FAVORITES ;
 int CSIDL_FLAG_CREATE ;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 int ERROR_FILE_NOT_FOUND ;
 scalar_t__ E_FAIL ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ GetLastError () ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int IMalloc_Free (int ,int *) ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ S_OK ;
 int SetFileAttributesA (char*,int ) ;
 int ok (int,char*,...) ;
 int pMalloc ;
 scalar_t__ pSHGetFolderLocation (int *,int,int *,int ,int **) ;
 scalar_t__ pSHGetFolderPathA (int *,int,int *,int ,char*) ;
 scalar_t__ pSHGetSpecialFolderLocation (int *,int,int **) ;
 int pSHGetSpecialFolderPathA (int *,char*,int,int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trace (char*,char*) ;

__attribute__((used)) static void doChild(const char *arg)
{
    char path[MAX_PATH];
    HRESULT hr;

    if (arg[0] == '1')
    {
        LPITEMIDLIST pidl;
        char *p;




        hr = pSHGetFolderPathA(((void*)0), CSIDL_FAVORITES, ((void*)0), SHGFP_TYPE_CURRENT, path);
        ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
            "SHGetFolderPath returned 0x%08x, expected 0x80070002\n", hr);

        pidl = ((void*)0);
        hr = pSHGetFolderLocation(((void*)0), CSIDL_FAVORITES, ((void*)0), 0, &pidl);
        ok(hr == E_FAIL || hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
            "SHGetFolderLocation returned 0x%08x\n", hr);
        if (hr == S_OK && pidl) IMalloc_Free(pMalloc, pidl);

        ok(!pSHGetSpecialFolderPathA(((void*)0), path, CSIDL_FAVORITES, FALSE),
            "SHGetSpecialFolderPath succeeded, expected failure\n");

        pidl = ((void*)0);
        hr = pSHGetSpecialFolderLocation(((void*)0), CSIDL_FAVORITES, &pidl);
        ok(hr == E_FAIL || hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
            "SHGetFolderLocation returned 0x%08x\n", hr);

        if (hr == S_OK && pidl) IMalloc_Free(pMalloc, pidl);


        hr = pSHGetFolderPathA(((void*)0), CSIDL_FAVORITES | CSIDL_FLAG_CREATE, ((void*)0),
                               SHGFP_TYPE_CURRENT, path);
        ok (hr == S_OK, "got 0x%08x\n", hr);
        if (hr == S_OK)
        {
            BOOL ret;

            trace("CSIDL_FAVORITES was changed to %s\n", path);
            ret = CreateDirectoryA(path, ((void*)0));
            ok(!ret, "expected failure with ERROR_ALREADY_EXISTS\n");
            if (!ret)
                ok(GetLastError() == ERROR_ALREADY_EXISTS,
                  "got %d, expected ERROR_ALREADY_EXISTS\n", GetLastError());

            p = path + strlen(path);
            strcpy(p, "\\desktop.ini");
            DeleteFileA(path);
            *p = 0;
            SetFileAttributesA( path, FILE_ATTRIBUTE_NORMAL );
            ret = RemoveDirectoryA(path);
            ok( ret, "failed to remove %s error %u\n", path, GetLastError() );
        }
    }
    else if (arg[0] == '2')
    {


        hr = pSHGetFolderPathA(((void*)0), CSIDL_FAVORITES | CSIDL_FLAG_CREATE, ((void*)0),
            SHGFP_TYPE_CURRENT, path);
        ok(hr == S_OK, "SHGetFolderPath failed: 0x%08x\n", hr);
    }
}
