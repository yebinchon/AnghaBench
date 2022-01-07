
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int WCHAR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetLastError () ;
 int MAX_PATH ;
 int ok (int,char*,int ) ;
 scalar_t__ pGetColorDirectoryW (int *,int *,int*) ;

__attribute__((used)) static void test_GetColorDirectoryW(void)
{
    BOOL ret;
    DWORD size;
    WCHAR buffer[MAX_PATH];
    size = 0;

    ret = pGetColorDirectoryW( ((void*)0), ((void*)0), &size );
    ok( !ret && size > 0, "GetColorDirectoryW() succeeded (%d)\n", GetLastError() );

    size = 0;

    ret = pGetColorDirectoryW( ((void*)0), buffer, &size );
    ok( !ret && size > 0, "GetColorDirectoryW() succeeded (%d)\n", GetLastError() );

    size = 1;

    ret = pGetColorDirectoryW( ((void*)0), buffer, &size );
    ok( !ret && size > 0, "GetColorDirectoryW() succeeded (%d)\n", GetLastError() );



    size = sizeof(buffer);

    ret = pGetColorDirectoryW( ((void*)0), buffer, &size );
    ok( ret && size > 0, "GetColorDirectoryW() failed (%d)\n", GetLastError() );
}
