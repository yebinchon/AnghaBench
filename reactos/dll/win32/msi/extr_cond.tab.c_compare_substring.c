
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;
typedef int INT ;
 int ERR (char*) ;
 int atoiW (int *) ;
 int compare_int (int,int,int) ;
 scalar_t__ str_is_number (int *) ;
 int strlenW (int *) ;
 int strncmpW (int *,int *,int) ;
 int strncmpiW (int *,int *,int) ;
 int strstrW (int *,int *) ;
 int strstriW (int *,int *) ;

__attribute__((used)) static INT compare_substring( LPCWSTR a, INT operator, LPCWSTR b )
{
    int lhs, rhs;


    if (!a || !*a)
        return 0;


    if (!b || !*b)
        return 1;


    lhs = atoiW(a);
    rhs = atoiW(b);
    if (str_is_number(a) && str_is_number(b))
        return compare_int( lhs, operator, rhs );

    switch (operator)
    {
    case 128:
        return strstrW( a, b ) != 0;
    case 131:
        return strstriW( a, b ) != 0;
    case 130:
    {
        int l = strlenW( a );
        int r = strlenW( b );
        if (r > l) return 0;
        return !strncmpW( a, b, r );
    }
    case 129:
    {
        int l = strlenW( a );
        int r = strlenW( b );
        if (r > l) return 0;
        return !strncmpW( a + (l - r), b, r );
    }
    case 133:
    {
        int l = strlenW( a );
        int r = strlenW( b );
        if (r > l) return 0;
        return !strncmpiW( a, b, r );
    }
    case 132:
    {
        int l = strlenW( a );
        int r = strlenW( b );
        if (r > l) return 0;
        return !strncmpiW( a + (l - r), b, r );
    }
    default:
        ERR("invalid substring operator\n");
        return 0;
    }
    return 0;
}
