
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (unsigned int) ;
 int strcat (char*,char const*) ;
 char* strdup (char const*) ;
 unsigned int strlen (char const*) ;
 int strncat (char*,char const*,int) ;
 char* strpbrk (char const*,char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static char *StripPasswords( const char *psz_config )
{
    unsigned n = 0;
    const char *p = psz_config;
    while ((p = strstr(p, "password=")) != ((void*)0))
    {
        n++;
        p++;
    }
    if (n == 0)
        return strdup(psz_config);

    char *psz_log = malloc(strlen(psz_config) + n * strlen("******") + 1);
    if (psz_log == ((void*)0))
        return ((void*)0);
    psz_log[0] = '\0';

    for (p = psz_config; ; )
    {
        const char *pwd = strstr(p, "password=");
        if (pwd == ((void*)0))
        {

            strcat(psz_log, p);
            break;
        }
        pwd += strlen("password=");

        char delim[3] = ",}";
        if (*pwd == '\'' || *pwd == '"')
        {
            delim[0] = *pwd++;
            delim[1] = '\0';
        }

        strncat(psz_log, p, pwd - p);
        strcat(psz_log, "******");


        p = pwd - 1;
        do
        {
            p = strpbrk(p + 1, delim);
            if (p == ((void*)0))

                return psz_log;
        }
        while (*(p - 1) == '\\');
    }
    return psz_log;
}
