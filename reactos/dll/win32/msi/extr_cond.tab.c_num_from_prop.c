
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL num_from_prop( LPCWSTR p, INT *val )
{
    INT ret = 0, sign = 1;

    if (!p)
        return FALSE;
    if (*p == '-')
    {
        sign = -1;
        p++;
    }
    if (!*p)
        return FALSE;
    while (*p)
    {
        if( *p < '0' || *p > '9' )
            return FALSE;
        ret = ret*10 + (*p - '0');
        p++;
    }
    *val = ret*sign;
    return TRUE;
}
