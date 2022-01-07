
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int MAX_PATH ;
 int REG_TEST_KEY ;
 int ok (int,char*,char*,...) ;
 scalar_t__ pSHRegGetPathA (int ,int ,char*,char*,int ) ;
 int sEmptyBuffer ;
 int sExpTestpath1 ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ stub1 (int ,int ,char*,char*,int ) ;

__attribute__((used)) static void test_SHGetRegPath(void)
{
 char buf[MAX_PATH];
        DWORD dwRet;

 if (!pSHRegGetPathA)
  return;

 strcpy(buf, sEmptyBuffer);
        dwRet = (*pSHRegGetPathA)(HKEY_CURRENT_USER, REG_TEST_KEY, "Test1", buf, 0);
 ok( ERROR_SUCCESS == dwRet, "SHRegGetPathA failed, ret=%u\n", dwRet);
 ok( 0 == strcmp(sExpTestpath1, buf) , "Comparing (%s) with (%s) failed\n", buf, sExpTestpath1);
}
