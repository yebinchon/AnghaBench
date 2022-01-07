
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_3__ {int Grouping; char* lpDecimalSep; char* lpThousandSep; scalar_t__ NegativeOrder; scalar_t__ LeadingZero; scalar_t__ NumDigits; } ;
typedef TYPE_1__ NUMBERFMTW ;
typedef int LPWSTR ;


 scalar_t__ BUFFER_SIZE ;
 unsigned int GetNumberFormatW (int ,int ,int *,TYPE_1__*,int ,scalar_t__) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int _itow (unsigned int,int *,int) ;
 int wcscpy (int ,char*) ;

__attribute__((used)) static
VOID
FormatBytes(LPWSTR lpBuf, unsigned cBytes)
{
    WCHAR szMB[32];
    NUMBERFMTW fmt;
    unsigned i;

    _itow(cBytes / (1024*1024), szMB, 10);

    fmt.NumDigits = 0;
    fmt.LeadingZero = 0;
    fmt.Grouping = 3;
    fmt.lpDecimalSep = L"";
    fmt.lpThousandSep = L" ";
    fmt.NegativeOrder = 0;

    i = GetNumberFormatW(LOCALE_SYSTEM_DEFAULT, 0, szMB, &fmt, lpBuf, BUFFER_SIZE - 3);
    if (i)
        --i;
    wcscpy(lpBuf + i, L" MB");
}
