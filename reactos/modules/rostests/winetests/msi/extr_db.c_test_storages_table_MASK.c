#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  char* HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* ERROR_INVALID_DATA ; 
 char* ERROR_NO_MORE_ITEMS ; 
 char* ERROR_SUCCESS ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSICOLINFO_NAMES ; 
 int /*<<< orphan*/  MSICOLINFO_TYPES ; 
 int /*<<< orphan*/  MSIDBOPEN_TRANSACT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int,char*,int*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int,char*,int*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int STGM_DIRECT ; 
 int STGM_READ ; 
 int STGM_SHARE_DENY_WRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 char* S_OK ; 
 char* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 char* msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC26 (int,char*,...) ; 

__attribute__((used)) static void FUNC27(void)
{
    MSIHANDLE hdb, hview, hrec;
    IStorage *stg, *inner;
    IStream *stm;
    char file[MAX_PATH];
    char buf[MAX_PATH];
    WCHAR name[MAX_PATH];
    LPCSTR query;
    HRESULT hr;
    DWORD size;
    UINT r;

    hdb = FUNC21();
    FUNC26(hdb, "failed to create db\n");

    r = FUNC8(hdb);
    FUNC26(r == ERROR_SUCCESS , "Failed to commit database\n");

    FUNC6(hdb);

    r = FUNC10(msifileW, MSIDBOPEN_TRANSACT, &hdb);
    FUNC26(r == ERROR_SUCCESS , "Failed to open database\n");

    /* check the column types */
    hrec = FUNC23(hdb, "SELECT * FROM `_Storages`", MSICOLINFO_TYPES);
    FUNC26(hrec, "failed to get column info hrecord\n");
    FUNC26(FUNC20(hrec, 1, "s62"), "wrong hrecord type\n");
    FUNC26(FUNC20(hrec, 2, "V0"), "wrong hrecord type\n");

    FUNC6(hrec);

    /* now try the names */
    hrec = FUNC23(hdb, "SELECT * FROM `_Storages`", MSICOLINFO_NAMES);
    FUNC26(hrec, "failed to get column info hrecord\n");
    FUNC26(FUNC20(hrec, 1, "Name"), "wrong hrecord type\n");
    FUNC26(FUNC20(hrec, 2, "Data"), "wrong hrecord type\n");

    FUNC6(hrec);

    FUNC22("storage.bin");

    hrec = FUNC7(2);
    FUNC14(hrec, 1, "stgname");

    r = FUNC13(hrec, 2, "storage.bin");
    FUNC26(r == ERROR_SUCCESS, "Failed to add stream data to the hrecord: %d\n", r);

    FUNC0("storage.bin");

    query = "INSERT INTO `_Storages` (`Name`, `Data`) VALUES (?, ?)";
    r = FUNC9(hdb, query, &hview);
    FUNC26(r == ERROR_SUCCESS, "Failed to open database hview: %d\n", r);

    r = FUNC16(hview, hrec);
    FUNC26(r == ERROR_SUCCESS, "Failed to execute hview: %d\n", r);

    FUNC6(hrec);
    FUNC15(hview);
    FUNC6(hview);

    query = "SELECT `Name`, `Data` FROM `_Storages`";
    r = FUNC9(hdb, query, &hview);
    FUNC26(r == ERROR_SUCCESS, "Failed to open database hview: %d\n", r);

    r = FUNC16(hview, 0);
    FUNC26(r == ERROR_SUCCESS, "Failed to execute hview: %d\n", r);

    r = FUNC17(hview, &hrec);
    FUNC26(r == ERROR_SUCCESS, "Failed to fetch hrecord: %d\n", r);

    size = MAX_PATH;
    r = FUNC11(hrec, 1, file, &size);
    FUNC26(r == ERROR_SUCCESS, "Failed to get string: %d\n", r);
    FUNC26(!FUNC24(file, "stgname"), "Expected \"stgname\", got \"%s\"\n", file);

    size = MAX_PATH;
    FUNC25(buf, "apple");
    r = FUNC12(hrec, 2, buf, &size);
    FUNC26(r == ERROR_INVALID_DATA, "Expected ERROR_INVALID_DATA, got %d\n", r);
    FUNC26(!FUNC24(buf, "apple"), "Expected buf to be unchanged, got %s\n", buf);
    FUNC26(size == 0, "Expected 0, got %d\n", size);

    FUNC6(hrec);

    r = FUNC17(hview, &hrec);
    FUNC26(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    FUNC15(hview);
    FUNC6(hview);

    FUNC8(hdb);
    FUNC6(hdb);

    FUNC18(CP_ACP, 0, msifile, -1, name, MAX_PATH);
    hr = FUNC19(name, NULL, STGM_DIRECT | STGM_READ |
                        STGM_SHARE_DENY_WRITE, NULL, 0, &stg);
    FUNC26(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC26(stg != NULL, "Expected non-NULL storage\n");

    FUNC18(CP_ACP, 0, "stgname", -1, name, MAX_PATH);
    hr = FUNC1(stg, name, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE,
                              NULL, 0, &inner);
    FUNC26(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC26(inner != NULL, "Expected non-NULL storage\n");

    FUNC18(CP_ACP, 0, "storage.bin", -1, name, MAX_PATH);
    hr = FUNC2(inner, name, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm);
    FUNC26(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC26(stm != NULL, "Expected non-NULL stream\n");

    hr = FUNC4(stm, buf, MAX_PATH, &size);
    FUNC26(hr == S_OK, "Expected S_OK, got %d\n", hr);
    FUNC26(size == 8, "Expected 8, got %d\n", size);
    FUNC26(!FUNC24(buf, "stgdata"), "Expected \"stgdata\", got \"%s\"\n", buf);

    FUNC5(stm);
    FUNC3(inner);

    FUNC3(stg);
    FUNC0(msifile);
}