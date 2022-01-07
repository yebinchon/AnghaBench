
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int NUMBERFMTW ;
typedef int LPWSTR ;
typedef int LONGLONG ;
typedef int BOOL ;


 int FillNumberFmt (int *,char*,int,char*,int) ;
 int GetNumberFormatW (int ,int ,char*,int *,int ,int) ;
 int LOCALE_USER_DEFAULT ;

__attribute__((used)) static int FormatInt(LONGLONG qdwValue, LPWSTR pszBuf, int cchBuf)
{
  NUMBERFMTW fmt;
  WCHAR decimal[8], thousand[8];
  WCHAR buf[24];
  WCHAR *c;
  BOOL neg = (qdwValue < 0);

  FillNumberFmt(&fmt, decimal, sizeof decimal / sizeof (WCHAR),
                thousand, sizeof thousand / sizeof (WCHAR));

  c = &buf[24];
  *(--c) = 0;
  do
  {
    *(--c) = '0' + (qdwValue%10);
    qdwValue /= 10;
  } while (qdwValue > 0);
  if (neg)
    *(--c) = '-';

  return GetNumberFormatW(LOCALE_USER_DEFAULT, 0, c, &fmt, pszBuf, cchBuf);
}
