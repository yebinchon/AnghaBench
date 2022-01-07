
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int MAX_PATH ;
 int REG_EXPAND_SZ ;
 int REG_SZ ;
 int REG_TEST_KEY ;
 int SHGetValueA (int ,int ,char*,int*,char*,int*) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int sEmptyBuffer ;
 int sExpTestpath1 ;
 int sTestpath1 ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static void test_SHGetValue(void)
{
 DWORD dwSize;
 DWORD dwType;
        DWORD dwRet;
 char buf[MAX_PATH];

 strcpy(buf, sEmptyBuffer);
 dwSize = MAX_PATH;
 dwType = -1;
        dwRet = SHGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test1", &dwType, buf, &dwSize);
 ok( ERROR_SUCCESS == dwRet, "SHGetValueA failed, ret=%u\n", dwRet);
        ok( 0 == strcmp(sExpTestpath1, buf) ||
            broken(0 == strcmp(sTestpath1, buf)),
            "Comparing of (%s) with (%s) failed\n", buf, sExpTestpath1);
        ok( REG_SZ == dwType ||
            broken(REG_EXPAND_SZ == dwType),
            "Expected REG_SZ, got (%u)\n", dwType);

 strcpy(buf, sEmptyBuffer);
 dwSize = MAX_PATH;
 dwType = -1;
        dwRet = SHGetValueA(HKEY_CURRENT_USER, REG_TEST_KEY, "Test2", &dwType, buf, &dwSize);
 ok( ERROR_SUCCESS == dwRet, "SHGetValueA failed, ret=%u\n", dwRet);
 ok( 0 == strcmp(sTestpath1, buf) , "Comparing of (%s) with (%s) failed\n", buf, sTestpath1);
 ok( REG_SZ == dwType , "Expected REG_SZ, got (%u)\n", dwType);
}
