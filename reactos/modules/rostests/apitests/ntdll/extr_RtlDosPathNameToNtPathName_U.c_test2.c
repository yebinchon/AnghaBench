
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Length; char* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int RTL_RELATIVE_NAME_U ;
typedef char* PWSTR ;
typedef int PCWSTR ;
typedef char* LPCWSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int RtlDosPathNameToNtPathName_U (char*,TYPE_1__*,int *,int *) ;
 int check_result (int,char*) ;
 scalar_t__ memcmp (char*,char*,size_t const) ;
 int printf (char*,...) ;
 int prucs (char*,TYPE_1__*) ;
 scalar_t__ wcscmp (char*,char*) ;
 size_t const wcslen (char*) ;

__attribute__((used)) static void test2(LPCWSTR pwsz, LPCWSTR pwszExpected, LPCWSTR pwszExpectedPartName)
{
    UNICODE_STRING NtName;
    PWSTR PartName;
    RTL_RELATIVE_NAME_U RelativeName;
 BOOLEAN bOK;

 bOK = RtlDosPathNameToNtPathName_U(pwsz, &NtName, (PCWSTR*)&PartName, &RelativeName);

 check_result(bOK, "RtlDosPathNameToNtPathName_U failed");
 if (!bOK) {
  printf("input: \"%S\"\n", pwsz);
  return;
 }
 bOK = NtName.Length >= 8 &&
       memcmp(NtName.Buffer, L"\\??\\", 8) == 0;
 check_result(bOK, "NtName does not start with \"\\??\\\"");
 if (!bOK) {
  return;
 }

 if (pwszExpected) {
  PWSTR pwszActual = NtName.Buffer + 4;
  const size_t lenExp = wcslen(pwszExpected);
  const size_t lenAct = (NtName.Length - 8) / 2;
  bOK = (lenExp == lenAct) &&
        memcmp(pwszActual, pwszExpected, lenExp * 2) == 0;
  check_result(bOK, "NtName does not match expected");
  if (!bOK)
  {
   printf("input:  : %2Iu chars \"%S\"\n", wcslen(pwsz), pwsz);
   printf("Expected: %2Iu chars \"%S\"\n", lenExp, pwszExpected);
   printf("Actual  : %2Iu chars \"%S\"\n", lenAct, lenAct ? pwszActual : L"(null)");
   return;
  }
 } else
 if (NtName.Length)
 {
  PWSTR pwszActual = NtName.Buffer + 4;
  const size_t lenAct = (NtName.Length - 8) / 2;
  check_result(FALSE, "Unexpected NtName (expected NULL)");
  printf("input:  : %2Iu chars \"%S\"\n", wcslen(pwsz), pwsz);
  printf("Actual  : %2Iu chars \"%S\"\n", lenAct, pwszActual);
 }

 if (pwszExpectedPartName) {
  const size_t lenExp = wcslen(pwszExpectedPartName);
  const size_t lenAct = PartName ? wcslen(PartName) : 0;
  bOK = (lenExp == lenAct) &&
        wcscmp(PartName, pwszExpectedPartName) == 0;
  check_result(bOK, "PartName does not match expected");
  if (!bOK) {
   printf("input:  : %2Iu chars \"%S\"\n", wcslen(pwsz), pwsz);
   printf("Expected: %2Iu chars \"%S\"\n", lenExp, pwszExpectedPartName);
   printf("Actual  : %2Iu chars \"%S\"\n", lenAct, lenAct ? PartName : L"(null)");
   return;
  }
 } else
 if (PartName)
 {
  check_result(FALSE, "Unexpected PartName (expected NULL).");
  printf("input:  : %2Iu chars \"%S\"\n", wcslen(pwsz), pwsz);
  printf("Actual  : %2Iu chars %S\n", wcslen(PartName), PartName);
 }
}
