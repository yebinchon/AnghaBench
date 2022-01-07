
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ BeginUpdateResourceA (int ,scalar_t__) ;
 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ ERROR_FILE_INVALID ;
 scalar_t__ EndUpdateResourceA (scalar_t__,scalar_t__) ;
 scalar_t__ FALSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ TRUE ;
 int filename ;
 int ok (int,char*) ;
 int skip (char*) ;

__attribute__((used)) static void update_empty_exe( void )
{
    HANDLE file, res, test;
    BOOL r;

    file = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0);
    ok (file != INVALID_HANDLE_VALUE, "failed to create file\n");

    CloseHandle( file );

    res = BeginUpdateResourceA( filename, TRUE );
    if ( res != ((void*)0) || GetLastError() != ERROR_FILE_INVALID )
    {
        ok( res != ((void*)0), "BeginUpdateResource failed\n");


        test = CreateFileA(filename, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, 0);
        ok (test != INVALID_HANDLE_VALUE, "failed to create file\n");

        CloseHandle( test );

        r = EndUpdateResourceA( res, FALSE );
        ok( r == FALSE, "EndUpdateResource failed\n");
    }
    else
        skip( "Can't update resource in empty file\n" );

    res = BeginUpdateResourceA( filename, FALSE );
    ok( res == ((void*)0), "BeginUpdateResource failed\n");
}
