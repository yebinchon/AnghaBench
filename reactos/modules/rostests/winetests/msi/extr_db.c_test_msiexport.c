
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (char*) ;
 int DeleteFileW (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int GENERIC_READ ;
 int GetCurrentDirectoryA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MSIDBOPEN_CREATE ;
 scalar_t__ MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseExportA (int ,char*,char*,char const*) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char const*,int *) ;
 scalar_t__ MsiOpenDatabaseW (int ,int ,int *) ;
 scalar_t__ MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 int lstrcatA (char*,char const*) ;
 int lstrcmpA (char*,char const*) ;
 int memset (char*,int ,int) ;
 char* msifile ;
 int msifileW ;
 int ok (int,char*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void test_msiexport(void)
{
    MSIHANDLE hdb = 0, hview = 0;
    UINT r;
    const char *query;
    char path[MAX_PATH];
    const char file[] = "phone.txt";
    HANDLE handle;
    char buffer[0x100];
    DWORD length;
    const char expected[] =
        "id\tname\tnumber\r\n"
        "I2\tS32\tS32\r\n"
        "phone\tid\r\n"
        "1\tAbe\t8675309\r\n";

    DeleteFileW(msifileW);


    r = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb);
    ok(r == ERROR_SUCCESS, "MsiOpenDatabase failed\n");


    query = "CREATE TABLE `phone` ( "
            "`id` INT, `name` CHAR(32), `number` CHAR(32) "
            "PRIMARY KEY `id`)";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = MsiViewClose(hview);
    ok(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = MsiCloseHandle(hview);
    ok(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");


    query = "INSERT INTO `phone` ( `id`, `name`, `number` )"
        "VALUES('1', 'Abe', '8675309')";
    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    ok(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "MsiViewExecute failed\n");
    r = MsiViewClose(hview);
    ok(r == ERROR_SUCCESS, "MsiViewClose failed\n");
    r = MsiCloseHandle(hview);
    ok(r == ERROR_SUCCESS, "MsiCloseHandle failed\n");

    GetCurrentDirectoryA(MAX_PATH, path);

    r = MsiDatabaseExportA(hdb, "phone", path, file);
    ok(r == ERROR_SUCCESS, "MsiDatabaseExport failed\n");

    MsiCloseHandle(hdb);

    lstrcatA(path, "\\");
    lstrcatA(path, file);


    length = 0;
    memset(buffer, 0, sizeof buffer);
    handle = CreateFileA(path, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (handle != INVALID_HANDLE_VALUE)
    {
        ReadFile(handle, buffer, sizeof buffer, &length, ((void*)0));
        CloseHandle(handle);
        DeleteFileA(path);
    }
    else
        ok(0, "failed to open file %s\n", path);

    ok( length == strlen(expected), "length of data wrong\n");
    ok( !lstrcmpA(buffer, expected), "data doesn't match\n");
    DeleteFileA(msifile);
}
