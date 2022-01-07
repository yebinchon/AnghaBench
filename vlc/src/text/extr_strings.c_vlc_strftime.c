
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int free (char*) ;
 int localtime_r (int *,struct tm*) ;
 char* malloc (size_t) ;
 char* realloc (char*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char*) ;
 size_t strftime (char*,size_t,char const*,struct tm*) ;
 int strlen (char const*) ;
 int time (int *) ;
 int vlc_assert_unreachable () ;

char *vlc_strftime( const char *tformat )
{
    time_t curtime;
    struct tm loctime;

    if (strcmp (tformat, "") == 0)
        return strdup ("");


    time( &curtime );


    localtime_r( &curtime, &loctime );
    for (size_t buflen = strlen (tformat) + 32;; buflen += 32)
    {
        char *str = malloc (buflen);
        if (str == ((void*)0))
            return ((void*)0);

        size_t len = strftime (str, buflen, tformat, &loctime);
        if (len > 0)
        {
            char *ret = realloc (str, len + 1);
            return ret ? ret : str;
        }
        free (str);
    }
    vlc_assert_unreachable ();
}
