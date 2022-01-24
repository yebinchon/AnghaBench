#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * folderId; } ;
typedef  int /*<<< orphan*/  KNOWNFOLDERID ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/ * E_NOT_SUFFICIENT_BUFFER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const FOLDERID_Desktop ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const IID_IOleObject ; 
 int KF_FLAG_DEFAULT ; 
 int KF_FLAG_DEFAULT_PATH ; 
 int KF_FLAG_DONT_UNEXPAND ; 
 int KF_FLAG_SIMPLE_IDLIST ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * S_OK ; 
 TYPE_1__* known_folders ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
    WCHAR buffer[MAX_PATH], *path, *path2;
    unsigned int i;
    HRESULT hr;
    DWORD len;

    if (!&pSHGetKnownFolderPath || !&pSHGetFolderPathEx)
    {
        FUNC9("SHGetKnownFolderPath or SHGetFolderPathEx not available\n");
        return;
    }

if (0) { /* crashes */
    hr = FUNC8(&FOLDERID_Desktop, 0, NULL, NULL);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);
}
    /* non-existent folder id */
    path = (void *)0xdeadbeef;
    hr = FUNC8(&IID_IOleObject, 0, NULL, &path);
    FUNC6(hr == FUNC3(ERROR_FILE_NOT_FOUND), "got 0x%08x\n", hr);
    FUNC6(path == NULL, "got %p\n", path);

    path = NULL;
    hr = FUNC8(&FOLDERID_Desktop, KF_FLAG_DEFAULT_PATH, NULL, &path);
    FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    FUNC6(path != NULL, "expected path != NULL\n");
    FUNC1(path);

    for (i = 0; i < FUNC0(known_folders); ++i)
    {
        const KNOWNFOLDERID *folder_id = known_folders[i].folderId;

        path = NULL;
        hr = FUNC8(folder_id, KF_FLAG_DEFAULT, NULL, &path);
        if (FUNC2(hr))
            continue;
        FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        FUNC6(path != NULL, "expected path != NULL\n");

        path2 = NULL;
        hr = FUNC8(folder_id, KF_FLAG_SIMPLE_IDLIST, NULL, &path2);
        FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        FUNC6(path2 != NULL, "expected path != NULL\n");
        FUNC6(!FUNC4(path, path2), "expected equal paths: %s, %s\n", FUNC10(path), FUNC10(path2));
        FUNC1(path2);

        path2 = NULL;
        hr = FUNC8(folder_id, KF_FLAG_DONT_UNEXPAND, NULL, &path2);
        FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        FUNC6(path2 != NULL, "expected path != NULL\n");
        FUNC6(!FUNC4(path, path2), "expected equal paths: %s, %s\n", FUNC10(path), FUNC10(path2));
        FUNC1(path2);

        path2 = NULL;
        hr = FUNC8(folder_id, KF_FLAG_SIMPLE_IDLIST | KF_FLAG_DONT_UNEXPAND, NULL, &path2);
        FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
        FUNC6(path2 != NULL, "expected path != NULL\n");
        FUNC6(!FUNC4(path, path2), "expected equal paths: %s, %s\n", FUNC10(path), FUNC10(path2));
        FUNC1(path2);

        FUNC1(path);
    }

    path = NULL;
    hr = FUNC8(&FOLDERID_Desktop, 0, NULL, &path);
    FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    FUNC6(path != NULL, "expected path != NULL\n");

    hr = FUNC7(&FOLDERID_Desktop, 0, NULL, buffer, MAX_PATH);
    FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    FUNC6(!FUNC4(path, buffer), "expected equal paths\n");
    len = FUNC5(buffer);
    FUNC1(path);

    hr = FUNC7(&FOLDERID_Desktop, 0, NULL, buffer, 0);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);

if (0) { /* crashes */
    hr = FUNC7(&FOLDERID_Desktop, 0, NULL, NULL, len + 1);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);

    hr = FUNC7(NULL, 0, NULL, buffer, MAX_PATH);
    FUNC6(hr == E_INVALIDARG, "expected E_INVALIDARG, got 0x%08x\n", hr);
}
    hr = FUNC7(&FOLDERID_Desktop, 0, NULL, buffer, len);
    FUNC6(hr == E_NOT_SUFFICIENT_BUFFER, "expected E_NOT_SUFFICIENT_BUFFER, got 0x%08x\n", hr);

    hr = FUNC7(&FOLDERID_Desktop, 0, NULL, buffer, len + 1);
    FUNC6(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
}