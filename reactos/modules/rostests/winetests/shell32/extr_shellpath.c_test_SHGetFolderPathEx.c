
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int * folderId; } ;
typedef int KNOWNFOLDERID ;
typedef int * HRESULT ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int CoTaskMemFree (int *) ;
 int ERROR_FILE_NOT_FOUND ;
 int * E_INVALIDARG ;
 int * E_NOT_SUFFICIENT_BUFFER ;
 scalar_t__ FAILED (int *) ;
 int const FOLDERID_Desktop ;
 int * HRESULT_FROM_WIN32 (int ) ;
 int const IID_IOleObject ;
 int KF_FLAG_DEFAULT ;
 int KF_FLAG_DEFAULT_PATH ;
 int KF_FLAG_DONT_UNEXPAND ;
 int KF_FLAG_SIMPLE_IDLIST ;
 int MAX_PATH ;
 int * S_OK ;
 TYPE_1__* known_folders ;
 int lstrcmpiW (int *,int *) ;
 int lstrlenW (int *) ;
 int ok (int,char*,...) ;
 int * pSHGetFolderPathEx (int const*,int ,int *,int *,int) ;
 int * pSHGetKnownFolderPath (int const*,int,int *,int **) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_SHGetFolderPathEx(void)
{
    WCHAR buffer[MAX_PATH], *path, *path2;
    unsigned int i;
    HRESULT hr;
    DWORD len;

    if (!pSHGetKnownFolderPath || !pSHGetFolderPathEx)
    {
        win_skip("SHGetKnownFolderPath or SHGetFolderPathEx not available\n");
        return;
    }

if (0) {
    hr = pSHGetKnownFolderPath(&FOLDERID_Desktop, 0, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);
}

    path = (void *)0xdeadbeef;
    hr = pSHGetKnownFolderPath(&IID_IOleObject, 0, ((void*)0), &path);
    ok(hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "got 0x%08x\n", hr);
    ok(path == ((void*)0), "got %p\n", path);

    path = ((void*)0);
    hr = pSHGetKnownFolderPath(&FOLDERID_Desktop, KF_FLAG_DEFAULT_PATH, ((void*)0), &path);
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    ok(path != ((void*)0), "expected path != NULL\n");
    CoTaskMemFree(path);

    for (i = 0; i < ARRAY_SIZE(known_folders); ++i)
    {
        const KNOWNFOLDERID *folder_id = known_folders[i].folderId;

        path = ((void*)0);
        hr = pSHGetKnownFolderPath(folder_id, KF_FLAG_DEFAULT, ((void*)0), &path);
        if (FAILED(hr))
            continue;
        ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        ok(path != ((void*)0), "expected path != NULL\n");

        path2 = ((void*)0);
        hr = pSHGetKnownFolderPath(folder_id, KF_FLAG_SIMPLE_IDLIST, ((void*)0), &path2);
        ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        ok(path2 != ((void*)0), "expected path != NULL\n");
        ok(!lstrcmpiW(path, path2), "expected equal paths: %s, %s\n", wine_dbgstr_w(path), wine_dbgstr_w(path2));
        CoTaskMemFree(path2);

        path2 = ((void*)0);
        hr = pSHGetKnownFolderPath(folder_id, KF_FLAG_DONT_UNEXPAND, ((void*)0), &path2);
        ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        ok(path2 != ((void*)0), "expected path != NULL\n");
        ok(!lstrcmpiW(path, path2), "expected equal paths: %s, %s\n", wine_dbgstr_w(path), wine_dbgstr_w(path2));
        CoTaskMemFree(path2);

        path2 = ((void*)0);
        hr = pSHGetKnownFolderPath(folder_id, KF_FLAG_SIMPLE_IDLIST | KF_FLAG_DONT_UNEXPAND, ((void*)0), &path2);
        ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        ok(path2 != ((void*)0), "expected path != NULL\n");
        ok(!lstrcmpiW(path, path2), "expected equal paths: %s, %s\n", wine_dbgstr_w(path), wine_dbgstr_w(path2));
        CoTaskMemFree(path2);

        CoTaskMemFree(path);
    }

    path = ((void*)0);
    hr = pSHGetKnownFolderPath(&FOLDERID_Desktop, 0, ((void*)0), &path);
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    ok(path != ((void*)0), "expected path != NULL\n");

    hr = pSHGetFolderPathEx(&FOLDERID_Desktop, 0, ((void*)0), buffer, MAX_PATH);
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    ok(!lstrcmpiW(path, buffer), "expected equal paths\n");
    len = lstrlenW(buffer);
    CoTaskMemFree(path);

    hr = pSHGetFolderPathEx(&FOLDERID_Desktop, 0, ((void*)0), buffer, 0);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);

if (0) {
    hr = pSHGetFolderPathEx(&FOLDERID_Desktop, 0, ((void*)0), ((void*)0), len + 1);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);

    hr = pSHGetFolderPathEx(((void*)0), 0, ((void*)0), buffer, MAX_PATH);
    ok(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);
}
    hr = pSHGetFolderPathEx(&FOLDERID_Desktop, 0, ((void*)0), buffer, len);
    ok(hr == E_NOT_SUFFICIENT_BUFFER, "expected E_NOT_SUFFICIENT_BUFFER, got 0x%08x\n", hr);

    hr = pSHGetFolderPathEx(&FOLDERID_Desktop, 0, ((void*)0), buffer, len + 1);
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
}
