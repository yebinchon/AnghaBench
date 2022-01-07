
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int HINSTANCE ;


 int GetLastError () ;
 int GetModuleHandleA (int *) ;
 void* LoadStringA (int ,int,char*,unsigned int const) ;
 int MAKELONG (int,int) ;
 int SetLastError (int) ;
 int assert (int) ;
 scalar_t__ broken (int) ;
 int memcmp (char*,char const*,int const) ;
 int ok (int,char*,unsigned int const,...) ;

__attribute__((used)) static void test_LoadStringA (void)
{
    HINSTANCE hInst = GetModuleHandleA(((void*)0));
    static const char str[] = "String resource";
    char buf[128];
    struct string_test {
        unsigned int bufsiz;
        unsigned int expected;
    };
    struct string_test tests[] = {{sizeof buf, sizeof str - 1},
                                  {sizeof str, sizeof str - 1},
                                  {sizeof str - 1, sizeof str - 2}};
    unsigned int i;
    int ret, ret2;

    assert (sizeof str < sizeof buf);
    for (i = 0; i < sizeof tests / sizeof tests[0]; i++) {
        const unsigned int bufsiz = tests[i].bufsiz;
        const unsigned int expected = tests[i].expected;
        const int len = LoadStringA (hInst, 0, buf, bufsiz);

        ok (len == expected, "bufsiz=%d: got %d, expected %d\n",
            bufsiz, len, expected);
        if (len != expected) continue;
        ok (!memcmp (buf, str, len),
            "bufsiz=%d: got '%s', expected '%.*s'\n",
            bufsiz, buf, len, str);
        ok (buf[len] == 0, "bufsiz=%d: NUL termination missing\n",
            bufsiz);
    }

    ret = LoadStringA(hInst, 1, buf, sizeof(buf) );
    ok( ret > 0, "LoadString failed: ret %d err %d\n", ret, GetLastError());
    ret2 = LoadStringA( hInst, MAKELONG( 1, 0x8000 ), buf, sizeof(buf));
    ok( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, GetLastError());
    ret2 = LoadStringA( hInst, MAKELONG( 1, 0xffff ), buf, sizeof(buf));
    ok( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, GetLastError());

    ret = LoadStringA(hInst, 65534, buf, sizeof(buf) );
    ok( ret > 0, "LoadString failed: ret %d err %d\n", ret, GetLastError());
    ret2 = LoadStringA( hInst, MAKELONG( 65534, 0x8000 ), buf, sizeof(buf));
    ok( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, GetLastError());
    ret2 = LoadStringA( hInst, MAKELONG( 65534, 0xffff ), buf, sizeof(buf));
    ok( ret2 == ret, "LoadString failed: ret %d err %d\n", ret, GetLastError());

    ret = LoadStringA(hInst, 0, buf, 0);
    ok( ret == -1 || broken(ret == 0),
        "LoadStringA did not return -1 when called with buflen = 0, got %d, err %d\n",
        ret, GetLastError());

    SetLastError(0xdeadbeef);
    buf[0] = 'a';
    ret = LoadStringA(hInst, 1, buf, 1);
    ok( !ret, "LoadString returned %d\n", ret);
    ok( buf[0] == 0, "buf[0] = %c (%x)\n", buf[0], buf[0]);
    ok( GetLastError() == 0xdeadbeef, "GetLastError() = %d\n", GetLastError());
}
