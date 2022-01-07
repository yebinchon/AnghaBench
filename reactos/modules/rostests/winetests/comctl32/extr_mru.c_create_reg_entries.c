
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HKEY ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_CURRENT_USER ;
 int REG_TEST_FULLKEY ;
 int REG_TEST_KEYA ;
 int RegCloseKey (int *) ;
 int RegCreateKeyA (int ,int ,int **) ;
 int TRUE ;
 int ok (int,char*,int ) ;

__attribute__((used)) static BOOL create_reg_entries(void)
{
    HKEY hKey = ((void*)0);

    ok(!RegCreateKeyA(HKEY_CURRENT_USER, REG_TEST_FULLKEY, &hKey),
       "Couldn't create test key \"%s\"\n", REG_TEST_KEYA);
    if (!hKey) return FALSE;
    RegCloseKey(hKey);
    return TRUE;
}
