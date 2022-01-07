
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ locale_t ;


 int LC_NUMERIC_MASK ;
 int freelocale (scalar_t__) ;
 scalar_t__ newlocale (int ,char*,int *) ;
 double strtod (char const*,char**) ;
 scalar_t__ uselocale (scalar_t__) ;

double us_strtod( const char *str, char **end )
{
    locale_t loc = newlocale (LC_NUMERIC_MASK, "C", ((void*)0));
    locale_t oldloc = uselocale (loc);
    double res = strtod (str, end);

    if (loc != (locale_t)0)
    {
        uselocale (oldloc);
        freelocale (loc);
    }
    return res;
}
