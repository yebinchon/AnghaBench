
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwUserPrefOrg ;
typedef int dwUserPref ;
typedef int UINT ;
typedef int* PVOID ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_DESKTOP ;
 int NtUserSystemParametersInfo (int ,int ,int*,int ) ;
 scalar_t__ QueryUserRegValueW (int ,int ,int*,int*,int *) ;
 int SPIF_UPDATEINIFILE ;
 int TEST (int) ;
 int VAL_PREFMASK ;

void
Test_UserPref(UINT uiGet, UINT uiSet, DWORD dwPrefMask)
{
    BOOL bOrig, bTemp = 0;
    DWORD dwUserPref, dwUserPrefOrg;
    DWORD cbSize;


    NtUserSystemParametersInfo(uiGet, 0, &bOrig, 0);
    cbSize = sizeof(dwUserPrefOrg);
    QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPrefOrg, &cbSize, ((void*)0));


    NtUserSystemParametersInfo(uiSet, 0, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(uiGet, 0, &bTemp, 0);
    TEST(bTemp == 0);
    cbSize = sizeof(dwUserPref);
    TEST(QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST((dwUserPref & dwPrefMask) == 0);
    TEST((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));


    NtUserSystemParametersInfo(uiSet, 0, (PVOID)1, 0);
    NtUserSystemParametersInfo(uiGet, 0, &bTemp, 0);
    TEST(bTemp == 1);
    cbSize = sizeof(dwUserPref);
    TEST(QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST((dwUserPref & dwPrefMask) == 0);
    TEST((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));


    NtUserSystemParametersInfo(uiSet, 0, (PVOID)2, 0);
    NtUserSystemParametersInfo(uiGet, 0, &bTemp, 0);
    TEST(bTemp == 1);
    cbSize = sizeof(dwUserPref);
    TEST(QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST((dwUserPref & dwPrefMask) == 0);
    TEST((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));


    NtUserSystemParametersInfo(uiSet, 0, (PVOID)1, SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(uiGet, 0, &bTemp, 0);
    TEST(bTemp == 1);
    cbSize = sizeof(dwUserPref);
    TEST(QueryUserRegValueW(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST((dwUserPref & dwPrefMask) == dwPrefMask);
    TEST((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));


    NtUserSystemParametersInfo(uiSet, 0, (PVOID)bOrig, SPIF_UPDATEINIFILE);


}
