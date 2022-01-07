
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int LPSTR ;
typedef int LPCSTR ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int MAX_PATH ;
 int MsiCloseHandle (int ) ;
 int MsiCreateRecord (int) ;
 scalar_t__ MsiFormatRecordA (int ,int ,int ,int *) ;
 scalar_t__ MsiRecordSetStringA (int ,int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void query_file_path(MSIHANDLE hpkg, LPCSTR file, LPSTR buff)
{
    UINT r;
    DWORD size;
    MSIHANDLE rec;

    rec = MsiCreateRecord( 1 );
    ok(rec, "MsiCreate record failed\n");

    r = MsiRecordSetStringA( rec, 0, file );
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r );

    size = MAX_PATH;
    r = MsiFormatRecordA( hpkg, rec, buff, &size );
    ok( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r );

    MsiCloseHandle( rec );
}
