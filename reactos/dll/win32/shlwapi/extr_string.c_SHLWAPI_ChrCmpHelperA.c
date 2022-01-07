
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringA (int ,int ,char*,int,char*,int) ;
 int GetThreadLocale () ;
 char HIBYTE (int ) ;
 scalar_t__ IsDBCSLeadByte (char) ;
 char LOBYTE (int ) ;

__attribute__((used)) static BOOL SHLWAPI_ChrCmpHelperA(WORD ch1, WORD ch2, DWORD dwFlags)
{
  char str1[3], str2[3];

  str1[0] = LOBYTE(ch1);
  if (IsDBCSLeadByte(str1[0]))
  {
    str1[1] = HIBYTE(ch1);
    str1[2] = '\0';
  }
  else
    str1[1] = '\0';

  str2[0] = LOBYTE(ch2);
  if (IsDBCSLeadByte(str2[0]))
  {
    str2[1] = HIBYTE(ch2);
    str2[2] = '\0';
  }
  else
    str2[1] = '\0';

  return CompareStringA(GetThreadLocale(), dwFlags, str1, -1, str2, -1) - CSTR_EQUAL;
}
