
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szReg ;
typedef int WCHAR ;
typedef int PCWSTR ;
typedef int INT ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_METRIC ;
 scalar_t__ QueryUserRegValueW (int ,int ,int **,int*,int *) ;
 scalar_t__ _wcsicmp (int *,char*) ;
 int ok (int,char*,int ) ;

void
Test_MetricKey(PCWSTR pwszVal, INT iVal)
{
    WCHAR szReg[10];
    DWORD cbSize;

    cbSize = sizeof(szReg);
    ok(QueryUserRegValueW(KEY_METRIC, pwszVal, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS, "Value=%S\n", pwszVal);
    ok(_wcsicmp(szReg, L"1") == 0, "Value=%S\n", pwszVal);

}
