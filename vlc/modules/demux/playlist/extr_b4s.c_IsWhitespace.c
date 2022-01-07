
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strspn (char const*,char*) ;

__attribute__((used)) static bool IsWhitespace( const char *psz_string )
{
    psz_string += strspn( psz_string, " \t\r\n" );
    return !*psz_string;
}
