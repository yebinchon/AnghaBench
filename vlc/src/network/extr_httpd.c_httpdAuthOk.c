
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 char* vlc_b64_decode (char const*) ;

__attribute__((used)) static bool httpdAuthOk(const char *user, const char *pass, const char *b64)
{
    if (!*user && !*pass)
        return 1;

    if (!b64)
        return 0;

    if (strncasecmp(b64, "BASIC", 5))
        return 0;

    b64 += 5;
    while (*b64 == ' ')
        b64++;

    char *given_user = vlc_b64_decode(b64);
    if (!given_user)
        return 0;

    char *given_pass = ((void*)0);
    given_pass = strchr (given_user, ':');
    if (!given_pass)
        goto auth_failed;

    *given_pass++ = '\0';

    if (strcmp (given_user, user))
        goto auth_failed;

    if (strcmp (given_pass, pass))
        goto auth_failed;

    free(given_user);
    return 1;

auth_failed:
    free(given_user);
    return 0;
}
