
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_BAD_ARGUMENTS ;
 int ERROR_INTERNET_BAD_OPTION_LENGTH ;
 int GetLastError () ;
 int INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER ;
 int INTERNET_OPTION_MAX_CONNS_PER_SERVER ;
 int InternetQueryOptionA (int *,int ,int*,int*) ;
 int InternetSetOptionA (int *,int ,int*,int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_max_conns(void)
{
    DWORD len, val;
    BOOL res;

    len = sizeof(val);
    val = 0xdeadbeef;
    res = InternetQueryOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, &len);
    ok(res,"Got wrong return value %x\n", res);
    ok(len == sizeof(val), "got %d\n", len);
    trace("INTERNET_OPTION_MAX_CONNS_PER_SERVER: %d\n", val);

    len = sizeof(val);
    val = 0xdeadbeef;
    res = InternetQueryOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER, &val, &len);
    ok(res,"Got wrong return value %x\n", res);
    ok(len == sizeof(val), "got %d\n", len);
    trace("INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER: %d\n", val);

    val = 3;
    res = InternetSetOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val));
    ok(res, "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) failed: %x\n", res);

    len = sizeof(val);
    val = 0xdeadbeef;
    res = InternetQueryOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, &len);
    ok(res,"Got wrong return value %x\n", res);
    ok(len == sizeof(val), "got %d\n", len);
    ok(val == 3, "got %d\n", val);

    val = 0;
    res = InternetSetOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val));
    ok(!res || broken(res),
       "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER, 0) succeeded\n");
    if (!res) ok(GetLastError() == ERROR_BAD_ARGUMENTS, "GetLastError() = %u\n", GetLastError());

    val = 2;
    res = InternetSetOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val)-1);
    ok(!res, "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) succeeded\n");
    ok(GetLastError() == ERROR_INTERNET_BAD_OPTION_LENGTH, "GetLastError() = %u\n", GetLastError());

    val = 2;
    res = InternetSetOptionA(((void*)0), INTERNET_OPTION_MAX_CONNS_PER_SERVER, &val, sizeof(val)+1);
    ok(!res, "InternetSetOptionA(INTERNET_OPTION_MAX_CONNS_PER_SERVER) succeeded\n");
    ok(GetLastError() == ERROR_INTERNET_BAD_OPTION_LENGTH, "GetLastError() = %u\n", GetLastError());
}
