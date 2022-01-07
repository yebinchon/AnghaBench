
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _SPACE ;
 scalar_t__ iswctype (int const,int ) ;

long
_wtol(const wchar_t *str)
{
    unsigned long RunningTotal = 0;
    char bMinus = 0;

    if (str == ((void*)0))
        return 0;

    while (iswctype(*str, _SPACE) ) {
        str++;
    }

    if (*str == L'+') {
        str++;
    } else if (*str == L'-') {
        bMinus = 1;
        str++;
    }

    while (*str >= L'0' && *str <= L'9') {
        RunningTotal = RunningTotal * 10 + *str - L'0';
        str++;
    }

    return bMinus ? 0-RunningTotal : RunningTotal;
}
