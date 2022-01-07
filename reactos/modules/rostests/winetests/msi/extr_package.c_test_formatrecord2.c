
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;


 int DeleteFileA (int ) ;
 int ERROR_INSTALL_PACKAGE_REJECTED ;
 int ERROR_SUCCESS ;
 int MsiCloseHandle (int) ;
 int MsiCreateRecord (int) ;
 int MsiFormatRecordA (int,int,char*,int*) ;
 int MsiRecordSetStringA (int,int,char*) ;
 int MsiSetPropertyA (int,char*,char*) ;
 int SetEnvironmentVariableA (char*,char*) ;
 int create_package_db () ;
 int msifile ;
 int ok (int,char*,...) ;
 int package_from_db (int ,int*) ;
 int skip (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test_formatrecord2(void)
{
    MSIHANDLE hpkg, hrec ;
    char buffer[0x100];
    DWORD sz;
    UINT r;

    r = package_from_db(create_package_db(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok( r == ERROR_SUCCESS, "failed to create package %u\n", r);

    r = MsiSetPropertyA(hpkg, "Manufacturer", " " );
    ok( r == ERROR_SUCCESS, "set property failed\n");

    hrec = MsiCreateRecord(2);
    ok(hrec, "create record failed\n");

    r = MsiRecordSetStringA( hrec, 0, "[ProgramFilesFolder][Manufacturer]\\asdf");
    ok( r == ERROR_SUCCESS, "format record failed\n");

    buffer[0] = 0;
    sz = sizeof buffer;
    r = MsiFormatRecordA( hpkg, hrec, buffer, &sz );
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);

    r = MsiRecordSetStringA(hrec, 0, "[foo][1]");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    r = MsiRecordSetStringA(hrec, 1, "hoo");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = MsiFormatRecordA(hpkg, hrec, buffer, &sz);
    ok( sz == 3, "size wrong\n");
    ok( 0 == strcmp(buffer,"hoo"), "wrong output %s\n",buffer);
    ok( r == ERROR_SUCCESS, "format failed\n");

    r = MsiRecordSetStringA(hrec, 0, "x[~]x");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = MsiFormatRecordA(hpkg, hrec, buffer, &sz);
    ok( sz == 3, "size wrong\n");
    ok( 0 == strcmp(buffer,"x"), "wrong output %s\n",buffer);
    ok( r == ERROR_SUCCESS, "format failed\n");

    r = MsiRecordSetStringA(hrec, 0, "[foo.$%}][1]");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    r = MsiRecordSetStringA(hrec, 1, "hoo");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = MsiFormatRecordA(hpkg, hrec, buffer, &sz);
    ok( sz == 3, "size wrong\n");
    ok( 0 == strcmp(buffer,"hoo"), "wrong output %s\n",buffer);
    ok( r == ERROR_SUCCESS, "format failed\n");

    r = MsiRecordSetStringA(hrec, 0, "[\\[]");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = MsiFormatRecordA(hpkg, hrec, buffer, &sz);
    ok( sz == 1, "size wrong\n");
    ok( 0 == strcmp(buffer,"["), "wrong output %s\n",buffer);
    ok( r == ERROR_SUCCESS, "format failed\n");

    SetEnvironmentVariableA("FOO", "BAR");
    r = MsiRecordSetStringA(hrec, 0, "[%FOO]");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = MsiFormatRecordA(hpkg, hrec, buffer, &sz);
    ok( sz == 3, "size wrong\n");
    ok( 0 == strcmp(buffer,"BAR"), "wrong output %s\n",buffer);
    ok( r == ERROR_SUCCESS, "format failed\n");

    r = MsiRecordSetStringA(hrec, 0, "[[1]]");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    r = MsiRecordSetStringA(hrec, 1, "%FOO");
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %d\n", r);
    sz = sizeof buffer;
    r = MsiFormatRecordA(hpkg, hrec, buffer, &sz);
    ok( sz == 3, "size wrong\n");
    ok( 0 == strcmp(buffer,"BAR"), "wrong output %s\n",buffer);
    ok( r == ERROR_SUCCESS, "format failed\n");

    MsiCloseHandle( hrec );
    MsiCloseHandle( hpkg );
    DeleteFileA(msifile);
}
