
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetLastError () ;
 int MAX_PATH ;
 int ok (int,char*,int ) ;
 scalar_t__ pGetColorDirectoryA (int *,char*,int*) ;

__attribute__((used)) static void test_GetColorDirectoryA(void)
{
    BOOL ret;
    DWORD size;
    char buffer[MAX_PATH];



    ret = pGetColorDirectoryA( ((void*)0), ((void*)0), ((void*)0) );
    ok( !ret, "GetColorDirectoryA() succeeded (%d)\n", GetLastError() );

    size = 0;

    ret = pGetColorDirectoryA( ((void*)0), ((void*)0), &size );
    ok( !ret && size > 0, "GetColorDirectoryA() succeeded (%d)\n", GetLastError() );

    size = 0;

    ret = pGetColorDirectoryA( ((void*)0), buffer, &size );
    ok( !ret && size > 0, "GetColorDirectoryA() succeeded (%d)\n", GetLastError() );

    size = 1;

    ret = pGetColorDirectoryA( ((void*)0), buffer, &size );
    ok( !ret && size > 0, "GetColorDirectoryA() succeeded (%d)\n", GetLastError() );



    size = sizeof(buffer);

    ret = pGetColorDirectoryA( ((void*)0), buffer, &size );
    ok( ret && size > 0, "GetColorDirectoryA() failed (%d)\n", GetLastError() );
}
