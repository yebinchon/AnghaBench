
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LSTATUS ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int ERROR_UNSUPPORTED_TYPE ;
 int HKEY_CURRENT_USER ;
 int MAX_PATH ;
 int REG_SZ ;
 int REG_TEST_KEY ;
 int SRRF_RT_REG_DWORD ;
 int SRRF_RT_REG_EXPAND_SZ ;
 int SRRF_RT_REG_QWORD ;
 int SRRF_RT_REG_SZ ;
 int ok (int,char*,...) ;
 int pSHRegGetValueA (int ,int ,char*,int ,int*,char*,int*) ;
 int sExpTestpath1 ;
 int sTestpath1 ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void test_SHRegGetValue(void)
{
    LSTATUS ret;
    DWORD size, type;
    char data[MAX_PATH];

    if(!pSHRegGetValueA)
        return;

    size = MAX_PATH;
    ret = pSHRegGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test1", SRRF_RT_REG_EXPAND_SZ, &type, data, &size);
    ok(ret == ERROR_INVALID_PARAMETER, "SHRegGetValue failed, ret=%u\n", ret);

    size = MAX_PATH;
    ret = pSHRegGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test1", SRRF_RT_REG_SZ, &type, data, &size);
    ok(ret == ERROR_SUCCESS, "SHRegGetValue failed, ret=%u\n", ret);
    ok(!strcmp(data, sExpTestpath1), "data = %s, expected %s\n", data, sExpTestpath1);
    ok(type == REG_SZ, "type = %d, expected REG_SZ\n", type);

    size = MAX_PATH;
    ret = pSHRegGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test1", SRRF_RT_REG_DWORD, &type, data, &size);
    ok(ret == ERROR_UNSUPPORTED_TYPE, "SHRegGetValue failed, ret=%u\n", ret);

    size = MAX_PATH;
    ret = pSHRegGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test2", SRRF_RT_REG_EXPAND_SZ, &type, data, &size);
    ok(ret == ERROR_INVALID_PARAMETER, "SHRegGetValue failed, ret=%u\n", ret);

    size = MAX_PATH;
    ret = pSHRegGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test2", SRRF_RT_REG_SZ, &type, data, &size);
    ok(ret == ERROR_SUCCESS, "SHRegGetValue failed, ret=%u\n", ret);
    ok(!strcmp(data, sTestpath1), "data = %s, expected %s\n", data, sTestpath1);
    ok(type == REG_SZ, "type = %d, expected REG_SZ\n", type);

    size = MAX_PATH;
    ret = pSHRegGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test2", SRRF_RT_REG_QWORD, &type, data, &size);
    ok(ret == ERROR_UNSUPPORTED_TYPE, "SHRegGetValue failed, ret=%u\n", ret);
}
