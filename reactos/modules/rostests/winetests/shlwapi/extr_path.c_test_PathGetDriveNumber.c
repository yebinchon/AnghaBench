
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char CHAR ;


 int GetLastError () ;
 int PathGetDriveNumberA (char const*) ;
 int PathGetDriveNumberW (char const*) ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_PathGetDriveNumber(void)
{
    static const CHAR test1A[] = "a:\\test.file";
    static const CHAR test2A[] = "file:////b:\\test.file";
    static const CHAR test3A[] = "file:///c:\\test.file";
    static const CHAR test4A[] = "file:\\\\c:\\test.file";
    static const CHAR test5A[] = "\\\\?\\C:\\dir\\file.txt";
    static const WCHAR test1W[] =
        {'a',':','\\',0};
    static const WCHAR test5W[] =
        {'\\','\\','?','\\','C',':','\\','d','i','r','\\','f','i','l','e',0};
    int ret;

    SetLastError(0xdeadbeef);
    ret = PathGetDriveNumberA(((void*)0));
    ok(ret == -1, "got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "got %d\n", GetLastError());

    ret = PathGetDriveNumberA(test1A);
    ok(ret == 0, "got %d\n", ret);
    ret = PathGetDriveNumberW(test1W);
    ok(ret == 0, "got %d\n", ret);
    ret = PathGetDriveNumberA(test2A);
    ok(ret == -1, "got %d\n", ret);
    ret = PathGetDriveNumberA(test3A);
    ok(ret == -1, "got %d\n", ret);
    ret = PathGetDriveNumberA(test4A);
    ok(ret == -1, "got %d\n", ret);

    ret = PathGetDriveNumberA(test5A);
    ok(ret == -1, "got %d\n", ret);
    ret = PathGetDriveNumberW(test5W);
    ok(ret == 2 || broken(ret == -1) , "got = %d\n", ret);
}
