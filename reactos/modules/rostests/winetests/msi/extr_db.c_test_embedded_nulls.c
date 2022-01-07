
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int control_table ;
typedef int buffer ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int CURR_DIR ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetCurrentDirectoryA (int ,int ) ;
 int MAX_PATH ;
 int MSIDBOPEN_CREATE ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseImportA (int ,int ,char*) ;
 scalar_t__ MsiOpenDatabaseW (int ,int ,int *) ;
 scalar_t__ MsiRecordGetStringA (int ,int,char*,scalar_t__*) ;
 scalar_t__ do_query (int ,char*,int *) ;
 int memcmp (char*,char*,int) ;
 char* msifile ;
 int msifileW ;
 int ok (int,char*,char*) ;
 int write_file (char*,char const*,int) ;

__attribute__((used)) static void test_embedded_nulls(void)
{
    static const char control_table[] =
        "Dialog\tText\n"
        "s72\tL0\n"
        "Control\tDialog\n"
        "LicenseAgreementDlg\ttext\x11\x19text\0text";
    UINT r, sz;
    MSIHANDLE hdb, hrec;
    char buffer[32];

    r = MsiOpenDatabaseW( msifileW, MSIDBOPEN_CREATE, &hdb );
    ok( r == ERROR_SUCCESS, "failed to open database %u\n", r );

    GetCurrentDirectoryA( MAX_PATH, CURR_DIR );
    write_file( "temp_file", control_table, sizeof(control_table) );
    r = MsiDatabaseImportA( hdb, CURR_DIR, "temp_file" );
    ok( r == ERROR_SUCCESS, "failed to import table %u\n", r );
    DeleteFileA( "temp_file" );

    r = do_query( hdb, "SELECT `Text` FROM `Control` WHERE `Dialog` = 'LicenseAgreementDlg'", &hrec );
    ok( r == ERROR_SUCCESS, "query failed %u\n", r );

    buffer[0] = 0;
    sz = sizeof(buffer);
    r = MsiRecordGetStringA( hrec, 1, buffer, &sz );
    ok( r == ERROR_SUCCESS, "failed to get string %u\n", r );
    ok( !memcmp( "text\r\ntext\ntext", buffer, sizeof("text\r\ntext\ntext") - 1 ), "wrong buffer contents \"%s\"\n", buffer );

    MsiCloseHandle( hrec );
    MsiCloseHandle( hdb );
    DeleteFileA( msifile );
}
