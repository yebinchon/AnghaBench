
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WIN32_FIND_DATAA ;
typedef scalar_t__ HANDLE ;


 int ERROR_NO_MORE_FILES ;
 scalar_t__ FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (char*,int *) ;
 scalar_t__ FindNextFileA (scalar_t__,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ TRUE ;
 char get_windows_drive () ;
 int ok (int,char*) ;

__attribute__((used)) static void test_FindNextFileA(void)
{
    HANDLE handle;
    WIN32_FIND_DATAA search_results;
    int err;
    char buffer[5] = "C:\\*";

    buffer[0] = get_windows_drive();
    handle = FindFirstFileA(buffer,&search_results);
    ok ( handle != INVALID_HANDLE_VALUE, "FindFirstFile on C:\\* should succeed\n" );
    while (FindNextFileA(handle, &search_results))
    {

    }
    ok ( FindClose(handle) == TRUE, "Failed to close handle\n");
    err = GetLastError();
    ok ( err == ERROR_NO_MORE_FILES, "GetLastError should return ERROR_NO_MORE_FILES\n");
}
