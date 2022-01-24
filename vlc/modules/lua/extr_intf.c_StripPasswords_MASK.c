#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 unsigned int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,char*) ; 

__attribute__((used)) static char *FUNC7( const char *psz_config )
{
    unsigned n = 0;
    const char *p = psz_config;
    while ((p = FUNC6(p, "password=")) != NULL)
    {
        n++;
        p++;
    }
    if (n == 0)
        return FUNC2(psz_config);

    char *psz_log = FUNC0(FUNC3(psz_config) + n * FUNC3("******") + 1);
    if (psz_log == NULL)
        return NULL;
    psz_log[0] = '\0';

    for (p = psz_config; ; )
    {
        const char *pwd = FUNC6(p, "password=");
        if (pwd == NULL)
        {
            /* Copy the last, ending bit */
            FUNC1(psz_log, p);
            break;
        }
        pwd += FUNC3("password=");

        char delim[3] = ",}";
        if (*pwd == '\'' || *pwd == '"')
        {
            delim[0] = *pwd++;
            delim[1] = '\0';
        }

        FUNC4(psz_log, p, pwd - p);
        FUNC1(psz_log, "******");

        /* Advance to the delimiter at the end of the password */
        p = pwd - 1;
        do
        {
            p = FUNC5(p + 1, delim);
            if (p == NULL)
                /* Oops, unbalanced quotes or brackets */
                return psz_log;
        }
        while (*(p - 1) == '\\');
    }
    return psz_log;
}