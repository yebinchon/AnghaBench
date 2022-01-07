
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 char const* wine_dbg_sprintf (char*,char,char,char,char) ;

const char *dbgstr_tag( DWORD tag )
{
    return wine_dbg_sprintf( "'%c%c%c%c'",
        (char)(tag >> 24), (char)(tag >> 16), (char)(tag >> 8), (char)(tag) );
}
