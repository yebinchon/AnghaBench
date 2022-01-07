
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int width; int precision; void* type; } ;
typedef TYPE_1__ WPRINTF_FORMAT ;
typedef char* LPCWSTR ;
typedef scalar_t__ INT ;


 int WPRINTF_I64 ;
 int WPRINTF_INTPTR ;
 int WPRINTF_LEFTALIGN ;
 int WPRINTF_LONG ;
 int WPRINTF_PREFIX_HEX ;
 int WPRINTF_SHORT ;
 int WPRINTF_UPPER_HEX ;
 int WPRINTF_WIDE ;
 int WPRINTF_ZEROPAD ;
 void* WPR_CHAR ;
 void* WPR_HEXA ;
 void* WPR_SIGNED ;
 void* WPR_STRING ;
 void* WPR_UNKNOWN ;
 void* WPR_UNSIGNED ;
 void* WPR_WCHAR ;
 void* WPR_WSTRING ;

__attribute__((used)) static INT WPRINTF_ParseFormatW( LPCWSTR format, WPRINTF_FORMAT *res )
{
    LPCWSTR p = format;

    res->flags = 0;
    res->width = 0;
    res->precision = 0;
    if (*p == '-') { res->flags |= WPRINTF_LEFTALIGN; p++; }
    if (*p == '#') { res->flags |= WPRINTF_PREFIX_HEX; p++; }
    if (*p == '0') { res->flags |= WPRINTF_ZEROPAD; p++; }
    while ((*p >= '0') && (*p <= '9'))
    {
        res->width = res->width * 10 + *p - '0';
        p++;
    }
    if (*p == '.')
    {
        p++;
        while ((*p >= '0') && (*p <= '9'))
        {
            res->precision = res->precision * 10 + *p - '0';
            p++;
        }
    }
    if (*p == 'l') { res->flags |= WPRINTF_LONG; p++; }
    else if (*p == 'h') { res->flags |= WPRINTF_SHORT; p++; }
    else if (*p == 'w') { res->flags |= WPRINTF_WIDE; p++; }
    else if (*p == 'I')
    {
        if (p[1] == '6' && p[2] == '4') { res->flags |= WPRINTF_I64; p += 3; }
        else if (p[1] == '3' && p[2] == '2') p += 3;
        else { res->flags |= WPRINTF_INTPTR; p++; }
    }
    switch(*p)
    {
    case 'c':
        res->type = (res->flags & WPRINTF_SHORT) ? WPR_CHAR : WPR_WCHAR;
        break;
    case 'C':
        res->type = (res->flags & WPRINTF_LONG) ? WPR_WCHAR : WPR_CHAR;
        break;
    case 'd':
    case 'i':
        res->type = WPR_SIGNED;
        break;
    case 's':
        res->type = ((res->flags & WPRINTF_SHORT) && !(res->flags & WPRINTF_WIDE)) ? WPR_STRING : WPR_WSTRING;
        break;
    case 'S':
        res->type = (res->flags & (WPRINTF_LONG|WPRINTF_WIDE)) ? WPR_WSTRING : WPR_STRING;
        break;
    case 'u':
        res->type = WPR_UNSIGNED;
        break;
    case 'p':
        res->width = 2 * sizeof(void *);
        res->flags |= WPRINTF_ZEROPAD | WPRINTF_INTPTR;

    case 'X':
        res->flags |= WPRINTF_UPPER_HEX;

    case 'x':
        res->type = WPR_HEXA;
        break;
    default:
        res->type = WPR_UNKNOWN;
        p--;
        break;
    }
    return (INT)(p - format) + 1;
}
