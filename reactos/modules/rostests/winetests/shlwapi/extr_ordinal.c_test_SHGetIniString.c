
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int DeleteFileW (char*) ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int lstrcmpW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int ok (int,char*,int,...) ;
 int pSHGetIniStringW (char const*,char const*,char*,int ,char*) ;
 int strcmp_wa (char*,char*) ;
 int wine_dbgstr_w (char const*) ;
 int write_inifile (char*) ;

__attribute__((used)) static void test_SHGetIniString(void)
{
    DWORD ret;
    WCHAR out[64] = {0};

    static const WCHAR TestAppW[] = {'T','e','s','t','A','p','p',0};
    static const WCHAR AKeyW[] = {'A','K','e','y',0};
    static const WCHAR AnotherKeyW[] = {'A','n','o','t','h','e','r','K','e','y',0};
    static const WCHAR JunkKeyW[] = {'J','u','n','k','K','e','y',0};
    static const WCHAR testpathW[] = {'C',':','\\','t','e','s','t','.','i','n','i',0};
    WCHAR pathW[MAX_PATH];

    lstrcpyW(pathW, testpathW);

    if (!write_inifile(pathW))
        return;

    if(0){

        pSHGetIniStringW(((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
        pSHGetIniStringW(((void*)0), AKeyW, out, ARRAY_SIZE(out), pathW);
        pSHGetIniStringW(TestAppW, AKeyW, ((void*)0), ARRAY_SIZE(out), pathW);
    }

    ret = pSHGetIniStringW(TestAppW, AKeyW, out, 0, pathW);
    ok(ret == 0, "SHGetIniStringW should have given 0, instead: %d\n", ret);


    out[0] = 0;
    SetLastError(0xdeadbeef);
    ret = pSHGetIniStringW(TestAppW, ((void*)0), out, ARRAY_SIZE(out), pathW);
    ok(ret == 4, "SHGetIniStringW should have given 4, instead: %d\n", ret);
    ok(!lstrcmpW(out, AKeyW), "Expected %s, got: %s, %d\n",
                wine_dbgstr_w(AKeyW), wine_dbgstr_w(out), GetLastError());

    ret = pSHGetIniStringW(TestAppW, AKeyW, out, ARRAY_SIZE(out), pathW);
    ok(ret == 1, "SHGetIniStringW should have given 1, instead: %d\n", ret);
    ok(!strcmp_wa(out, "1"), "Expected L\"1\", got: %s\n", wine_dbgstr_w(out));

    ret = pSHGetIniStringW(TestAppW, AnotherKeyW, out, ARRAY_SIZE(out), pathW);
    ok(ret == 4, "SHGetIniStringW should have given 4, instead: %d\n", ret);
    ok(!strcmp_wa(out, "asdf"), "Expected L\"asdf\", got: %s\n", wine_dbgstr_w(out));

    out[0] = 1;
    ret = pSHGetIniStringW(TestAppW, JunkKeyW, out, ARRAY_SIZE(out), pathW);
    ok(ret == 0, "SHGetIniStringW should have given 0, instead: %d\n", ret);
    ok(*out == 0, "Expected L\"\", got: %s\n", wine_dbgstr_w(out));

    DeleteFileW(pathW);
}
