
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* UINT ;
typedef int MSIHANDLE ;
typedef char* LPCSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef char* HRESULT ;
typedef int DWORD ;


 int CP_ACP ;
 int DeleteFileA (char*) ;
 char* ERROR_INVALID_DATA ;
 char* ERROR_NO_MORE_ITEMS ;
 char* ERROR_SUCCESS ;
 char* IStorage_OpenStorage (int *,int *,int *,int,int *,int ,int **) ;
 char* IStorage_OpenStream (int *,int *,int *,int,int ,int **) ;
 int IStorage_Release (int *) ;
 char* IStream_Read (int *,char*,int,int*) ;
 int IStream_Release (int *) ;
 int MAX_PATH ;
 int MSICOLINFO_NAMES ;
 int MSICOLINFO_TYPES ;
 int MSIDBOPEN_TRANSACT ;
 int MsiCloseHandle (int ) ;
 int MsiCreateRecord (int) ;
 char* MsiDatabaseCommit (int ) ;
 char* MsiDatabaseOpenViewA (int ,char*,int *) ;
 char* MsiOpenDatabaseW (int ,int ,int *) ;
 char* MsiRecordGetStringA (int ,int,char*,int*) ;
 char* MsiRecordReadStream (int ,int,char*,int*) ;
 char* MsiRecordSetStreamA (int ,int,char*) ;
 int MsiRecordSetStringA (int ,int,char*) ;
 int MsiViewClose (int ) ;
 char* MsiViewExecute (int ,int ) ;
 char* MsiViewFetch (int ,int *) ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int STGM_DIRECT ;
 int STGM_READ ;
 int STGM_SHARE_DENY_WRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 char* S_OK ;
 char* StgOpenStorage (int *,int *,int,int *,int ,int **) ;
 int check_record (int ,int,char*) ;
 int create_db () ;
 int create_storage (char*) ;
 int get_column_info (int ,char*,int ) ;
 int lstrcmpA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 char* msifile ;
 int msifileW ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_storages_table(void)
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

    hdb = create_db();
    ok(hdb, "failed to create db\n");

    r = MsiDatabaseCommit(hdb);
    ok(r == ERROR_SUCCESS , "Failed to commit database\n");

    MsiCloseHandle(hdb);

    r = MsiOpenDatabaseW(msifileW, MSIDBOPEN_TRANSACT, &hdb);
    ok(r == ERROR_SUCCESS , "Failed to open database\n");


    hrec = get_column_info(hdb, "SELECT * FROM `_Storages`", MSICOLINFO_TYPES);
    ok(hrec, "failed to get column info hrecord\n");
    ok(check_record(hrec, 1, "s62"), "wrong hrecord type\n");
    ok(check_record(hrec, 2, "V0"), "wrong hrecord type\n");

    MsiCloseHandle(hrec);


    hrec = get_column_info(hdb, "SELECT * FROM `_Storages`", MSICOLINFO_NAMES);
    ok(hrec, "failed to get column info hrecord\n");
    ok(check_record(hrec, 1, "Name"), "wrong hrecord type\n");
    ok(check_record(hrec, 2, "Data"), "wrong hrecord type\n");

    MsiCloseHandle(hrec);

    create_storage("storage.bin");

    hrec = MsiCreateRecord(2);
    MsiRecordSetStringA(hrec, 1, "stgname");

    r = MsiRecordSetStreamA(hrec, 2, "storage.bin");
    ok(r == ERROR_SUCCESS, "Failed to add stream data to the hrecord: %d\n", r);

    DeleteFileA("storage.bin");

    query = "INSERT INTO `_Storages` (`Name`, `Data`) VALUES (?, ?)";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "Failed to open database hview: %d\n", r);

    r = MsiViewExecute(hview, hrec);
    ok(r == ERROR_SUCCESS, "Failed to execute hview: %d\n", r);

    MsiCloseHandle(hrec);
    MsiViewClose(hview);
    MsiCloseHandle(hview);

    query = "SELECT `Name`, `Data` FROM `_Storages`";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "Failed to open database hview: %d\n", r);

    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "Failed to execute hview: %d\n", r);

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_SUCCESS, "Failed to fetch hrecord: %d\n", r);

    size = MAX_PATH;
    r = MsiRecordGetStringA(hrec, 1, file, &size);
    ok(r == ERROR_SUCCESS, "Failed to get string: %d\n", r);
    ok(!lstrcmpA(file, "stgname"), "Expected \"stgname\", got \"%s\"\n", file);

    size = MAX_PATH;
    lstrcpyA(buf, "apple");
    r = MsiRecordReadStream(hrec, 2, buf, &size);
    ok(r == ERROR_INVALID_DATA, "Expected ERROR_INVALID_DATA, got %d\n", r);
    ok(!lstrcmpA(buf, "apple"), "Expected buf to be unchanged, got %s\n", buf);
    ok(size == 0, "Expected 0, got %d\n", size);

    MsiCloseHandle(hrec);

    r = MsiViewFetch(hview, &hrec);
    ok(r == ERROR_NO_MORE_ITEMS, "Expected ERROR_NO_MORE_ITEMS, got %d\n", r);

    MsiViewClose(hview);
    MsiCloseHandle(hview);

    MsiDatabaseCommit(hdb);
    MsiCloseHandle(hdb);

    MultiByteToWideChar(CP_ACP, 0, msifile, -1, name, MAX_PATH);
    hr = StgOpenStorage(name, ((void*)0), STGM_DIRECT | STGM_READ |
                        STGM_SHARE_DENY_WRITE, ((void*)0), 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(stg != ((void*)0), "Expected non-NULL storage\n");

    MultiByteToWideChar(CP_ACP, 0, "stgname", -1, name, MAX_PATH);
    hr = IStorage_OpenStorage(stg, name, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE,
                              ((void*)0), 0, &inner);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(inner != ((void*)0), "Expected non-NULL storage\n");

    MultiByteToWideChar(CP_ACP, 0, "storage.bin", -1, name, MAX_PATH);
    hr = IStorage_OpenStream(inner, name, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(stm != ((void*)0), "Expected non-NULL stream\n");

    hr = IStream_Read(stm, buf, MAX_PATH, &size);
    ok(hr == S_OK, "Expected S_OK, got %d\n", hr);
    ok(size == 8, "Expected 8, got %d\n", size);
    ok(!lstrcmpA(buf, "stgdata"), "Expected \"stgdata\", got \"%s\"\n", buf);

    IStream_Release(stm);
    IStorage_Release(inner);

    IStorage_Release(stg);
    DeleteFileA(msifile);
}
