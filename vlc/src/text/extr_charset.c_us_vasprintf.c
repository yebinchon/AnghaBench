
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ locale_t ;


 int LC_NUMERIC_MASK ;
 int freelocale (scalar_t__) ;
 scalar_t__ newlocale (int ,char*,int *) ;
 scalar_t__ uselocale (scalar_t__) ;
 int vasprintf (char**,char const*,int ) ;

int us_vasprintf( char **ret, const char *format, va_list ap )
{
    locale_t loc = newlocale( LC_NUMERIC_MASK, "C", ((void*)0) );
    locale_t oldloc = uselocale( loc );

    int i_rc = vasprintf( ret, format, ap );

    if ( loc != (locale_t)0 )
    {
        uselocale( oldloc );
        freelocale( loc );
    }

    return i_rc;
}
