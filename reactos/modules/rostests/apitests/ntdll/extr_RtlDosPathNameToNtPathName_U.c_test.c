
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPCWSTR ;


 int swprintf (int *,char*,char const*) ;
 int test2 (int *,int *,int *) ;

__attribute__((used)) static void test(const char* psz, const char* pszExpected, const char* pszExpectedPartName)
{
 WCHAR wszTmp1[512];
 WCHAR wszTmp2[512];
 WCHAR wszTmp3[512];
 LPCWSTR p2 = 0;
 LPCWSTR p3 = 0;
 swprintf(wszTmp1, L"%S", psz);
 if (pszExpected) {
  swprintf(wszTmp2, L"%S", pszExpected);
  p2 = wszTmp2;
 }
 if (pszExpectedPartName) {
  swprintf(wszTmp3, L"%S", pszExpectedPartName);
  p3 = wszTmp3;
 }
 test2(wszTmp1, p2, p3);
}
