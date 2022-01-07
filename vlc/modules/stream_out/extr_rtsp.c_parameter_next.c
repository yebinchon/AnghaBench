
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,char const) ;

__attribute__((used)) static inline const char *parameter_next( const char *str )
{
    while( strchr( ",;", *str ) == ((void*)0) )
        str++;

    return (*str == ';') ? (str + 1) : ((void*)0);
}
