
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_strdup (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
canonical_server_url (const char *url_in)
{
    char *url = g_strdup(url_in);
    int len = strlen(url);

    if (url[len - 1] == '/')
        url[len - 1] = 0;

    return url;
}
