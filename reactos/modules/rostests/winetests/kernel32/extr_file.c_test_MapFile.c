
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int * CreateFileMappingA (int *,int *,int ,int,int,char*) ;
 int DeleteFileA (int ) ;
 scalar_t__ ERROR_FILE_INVALID ;
 scalar_t__ GetLastError () ;
 int PAGE_READWRITE ;
 scalar_t__ broken (int ) ;
 int filename ;
 int ok (int,char*) ;
 int test_Mapfile_createtemp (int **) ;

__attribute__((used)) static void test_MapFile(void)
{
    HANDLE handle;
    HANDLE hmap;

    ok(test_Mapfile_createtemp(&handle), "Couldn't create test file.\n");

    hmap = CreateFileMappingA( handle, ((void*)0), PAGE_READWRITE, 0, 0x1000, "named_file_map" );
    ok( hmap != ((void*)0), "mapping should work, I named it!\n" );

    ok( CloseHandle( hmap ), "can't close mapping handle\n");



    hmap = CreateFileMappingA( handle, ((void*)0), PAGE_READWRITE, 0, 0, ((void*)0) );
    ok( hmap != ((void*)0), "We should still be able to map!\n" );
    ok( CloseHandle( hmap ), "can't close mapping handle\n");
    ok( CloseHandle( handle ), "can't close file handle\n");
    handle = ((void*)0);

    ok(test_Mapfile_createtemp(&handle), "Couldn't create test file.\n");

    hmap = CreateFileMappingA( handle, ((void*)0), PAGE_READWRITE, 0, 0, ((void*)0) );
    ok( hmap == ((void*)0), "mapped zero size file\n");
    ok( GetLastError() == ERROR_FILE_INVALID, "not ERROR_FILE_INVALID\n");

    hmap = CreateFileMappingA( handle, ((void*)0), PAGE_READWRITE, 0x80000000, 0, ((void*)0) );
    ok( hmap == ((void*)0) || broken(hmap != ((void*)0)) , "mapping should fail\n");

    if ( hmap )
        CloseHandle( hmap );

    hmap = CreateFileMappingA( handle, ((void*)0), PAGE_READWRITE, 0x80000000, 0x10000, ((void*)0) );
    ok( hmap == ((void*)0) || broken(hmap != ((void*)0)) , "mapping should fail\n");

    if ( hmap )
        CloseHandle( hmap );



    ok( CloseHandle( handle ), "can't close file handle\n");
    ok( DeleteFileA( filename ), "DeleteFile failed after map\n" );
}
