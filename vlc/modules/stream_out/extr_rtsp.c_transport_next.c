
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char const) ;

__attribute__((used)) static inline const char *transport_next( const char *str )
{

    str = strchr( str, ',' );
    if( str == ((void*)0) )
        return ((void*)0);

    str++;
    while( strchr( "\r\n\t ", *str ) )
        str++;

    return (*str) ? str : ((void*)0);
}
