
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ MSIHANDLE ;
typedef char* LPCSTR ;
typedef int DWORD ;


 int DeleteFileA (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 int MSIDBOPEN_CREATE ;
 int MSIDBOPEN_READONLY ;
 int MsiCloseHandle (scalar_t__) ;
 scalar_t__ MsiCreateRecord (int) ;
 int MsiDatabaseCommit (scalar_t__) ;
 int MsiOpenDatabaseW (int ,int ,scalar_t__*) ;
 int MsiRecordGetStringA (scalar_t__,int,char*,int*) ;
 int MsiRecordReadStream (scalar_t__,int,char*,int*) ;
 int MsiRecordSetStreamA (scalar_t__,int,char*) ;
 int create_file (char*) ;
 int do_query (scalar_t__,char*,scalar_t__*) ;
 int lstrcmpA (char*,char*) ;
 int memset (char*,int ,int) ;
 char* msifile ;
 int msifileW ;
 int ok (int,char*,...) ;
 int run_query (scalar_t__,scalar_t__,char*) ;

__attribute__((used)) static void test_binary(void)
{
    MSIHANDLE hdb = 0, rec;
    char file[MAX_PATH];
    char buf[MAX_PATH];
    DWORD size;
    LPCSTR query;
    UINT r;


    r = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb );
    ok( r == ERROR_SUCCESS , "Failed to open database\n" );

    query = "CREATE TABLE `Binary` ( `Name` CHAR(72) NOT NULL, `ID` INT NOT NULL, `Data` OBJECT  PRIMARY KEY `Name`, `ID`)";
    r = run_query( hdb, 0, query );
    ok( r == ERROR_SUCCESS, "Cannot create Binary table: %d\n", r );

    create_file( "test.txt" );
    rec = MsiCreateRecord( 1 );
    r = MsiRecordSetStreamA( rec, 1, "test.txt" );
    ok( r == ERROR_SUCCESS, "Failed to add stream data to the record: %d\n", r);
    DeleteFileA( "test.txt" );


    query = "INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'encryption.dll.CB4E6205_F99A_4C51_ADD4_184506EFAB87', 10000, ? )";
    r = run_query( hdb, rec, query );
    ok( r == ERROR_SUCCESS, "Insert into Binary table failed: %d\n", r );

    r = MsiCloseHandle( rec );
    ok( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    r = MsiDatabaseCommit( hdb );
    ok( r == ERROR_FUNCTION_FAILED , "got %u\n", r );

    r = MsiCloseHandle( hdb );
    ok( r == ERROR_SUCCESS , "Failed to close database\n" );

    r = MsiOpenDatabaseW(msifileW, MSIDBOPEN_CREATE, &hdb );
    ok( r == ERROR_SUCCESS , "Failed to open database\n" );

    query = "CREATE TABLE `Binary` ( `Name` CHAR(72) NOT NULL, `ID` INT NOT NULL, `Data` OBJECT  PRIMARY KEY `Name`, `ID`)";
    r = run_query( hdb, 0, query );
    ok( r == ERROR_SUCCESS, "Cannot create Binary table: %d\n", r );

    create_file( "test.txt" );
    rec = MsiCreateRecord( 1 );
    r = MsiRecordSetStreamA( rec, 1, "test.txt" );
    ok( r == ERROR_SUCCESS, "Failed to add stream data to the record: %d\n", r );
    DeleteFileA( "test.txt" );

    query = "INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'filename1', 1, ? )";
    r = run_query( hdb, rec, query );
    ok( r == ERROR_SUCCESS, "Insert into Binary table failed: %d\n", r );

    query = "INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'filename1', 1, ? )";
    r = run_query( hdb, rec, query );
    ok( r == ERROR_FUNCTION_FAILED, "got %u\n", r );

    r = MsiCloseHandle( rec );
    ok( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    r = MsiDatabaseCommit( hdb );
    ok( r == ERROR_SUCCESS , "Failed to commit database\n" );

    r = MsiCloseHandle( hdb );
    ok( r == ERROR_SUCCESS , "Failed to close database\n" );


    r = MsiOpenDatabaseW( msifileW, MSIDBOPEN_READONLY, &hdb );
    ok( r == ERROR_SUCCESS , "Failed to open database\n" );

    query = "SELECT * FROM `_Streams`";
    r = do_query( hdb, query, &rec );
    ok( r == ERROR_SUCCESS, "SELECT query failed: %d\n", r );

    size = MAX_PATH;
    r = MsiRecordGetStringA( rec, 1, file, &size );
    ok( r == ERROR_SUCCESS, "Failed to get string: %d\n", r );
    ok( !lstrcmpA(file, "Binary.filename1.1"), "Expected 'Binary.filename1.1', got %s\n", file );

    size = MAX_PATH;
    memset( buf, 0, MAX_PATH );
    r = MsiRecordReadStream( rec, 2, buf, &size );
    ok( r == ERROR_SUCCESS, "Failed to get stream: %d\n", r );
    ok( !lstrcmpA(buf, "test.txt\n"), "Expected 'test.txt\\n', got %s\n", buf );

    r = MsiCloseHandle( rec );
    ok( r == ERROR_SUCCESS , "Failed to close record handle\n" );


    query = "SELECT * FROM `Binary`";
    r = do_query( hdb, query, &rec );
    ok( r == ERROR_SUCCESS, "SELECT query failed: %d\n", r );

    size = MAX_PATH;
    r = MsiRecordGetStringA( rec, 1, file, &size );
    ok( r == ERROR_SUCCESS, "Failed to get string: %d\n", r );
    ok( !lstrcmpA(file, "filename1"), "Expected 'filename1', got %s\n", file );

    size = MAX_PATH;
    memset( buf, 0, MAX_PATH );
    r = MsiRecordReadStream( rec, 3, buf, &size );
    ok( r == ERROR_SUCCESS, "Failed to get stream: %d\n", r );
    ok( !lstrcmpA(buf, "test.txt\n"), "Expected 'test.txt\\n', got %s\n", buf );

    r = MsiCloseHandle( rec );
    ok( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    r = MsiCloseHandle( hdb );
    ok( r == ERROR_SUCCESS , "Failed to close database\n" );

    DeleteFileA( msifile );
}
