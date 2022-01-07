
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int NumDigits; } ;
typedef TYPE_1__ NUMBERFMTW ;
typedef int LPWSTR ;


 int FillNumberFmt (TYPE_1__*,char*,int,char*,int) ;
 int GetNumberFormatW (int ,int ,char*,TYPE_1__*,int ,int) ;
 int LOCALE_USER_DEFAULT ;
 int snprintfW (char*,int,char const*,double) ;

__attribute__((used)) static int FormatDouble(double value, int decimals, LPWSTR pszBuf, int cchBuf)
{
  static const WCHAR flfmt[] = {'%','f',0};
  WCHAR buf[64];
  NUMBERFMTW fmt;
  WCHAR decimal[8], thousand[8];

  snprintfW(buf, 64, flfmt, value);

  FillNumberFmt(&fmt, decimal, sizeof decimal / sizeof (WCHAR),
                 thousand, sizeof thousand / sizeof (WCHAR));
  fmt.NumDigits = decimals;
  return GetNumberFormatW(LOCALE_USER_DEFAULT, 0, buf, &fmt, pszBuf, cchBuf);
}
