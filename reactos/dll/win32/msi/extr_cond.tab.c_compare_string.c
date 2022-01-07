
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;
 int COND_RHS ;
 int COND_SS ;
 int ERR (char*) ;
 int atoiW (scalar_t__) ;
 int compare_int (int ,int,int ) ;
 int compare_substring (scalar_t__,int,scalar_t__) ;
 scalar_t__ str_is_number (scalar_t__) ;
 int strcmpW (scalar_t__,scalar_t__) ;
 int strcmpiW (scalar_t__,scalar_t__) ;
 scalar_t__ szEmpty ;

__attribute__((used)) static INT compare_string( LPCWSTR a, INT operator, LPCWSTR b, BOOL convert )
{
    if (operator >= COND_SS && operator <= COND_RHS)
        return compare_substring( a, operator, b );


    if (!a) a = szEmpty;
    if (!b) b = szEmpty;

    if (convert && str_is_number(a) && str_is_number(b))
        return compare_int( atoiW(a), operator, atoiW(b) );


    switch (operator)
    {
    case 129:
        return strcmpW( a, b ) < 0;
    case 137:
        return strcmpW( a, b ) > 0;
    case 139:
        return strcmpW( a, b ) == 0;
    case 128:
        return strcmpW( a, b ) != 0;
    case 138:
        return strcmpW( a, b ) >= 0;
    case 130:
        return strcmpW( a, b ) <= 0;
    case 132:
        return strcmpiW( a, b ) < 0;
    case 134:
        return strcmpiW( a, b ) > 0;
    case 136:
        return strcmpiW( a, b ) == 0;
    case 131:
        return strcmpiW( a, b ) != 0;
    case 135:
        return strcmpiW( a, b ) >= 0;
    case 133:
        return strcmpiW( a, b ) <= 0;
    default:
        ERR("invalid string operator\n");
        return 0;
    }
    return 0;
}
