
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double us_strtod (char const*,int *) ;

double us_atof( const char *str )
{
    return us_strtod( str, ((void*)0) );
}
