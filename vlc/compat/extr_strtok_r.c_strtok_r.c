
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 char* strpbrk (char*,char const*) ;
 int strspn (char*,char const*) ;

char *strtok_r(char *s, const char *delim, char **save_ptr)
{
    char *token;

    if (s == ((void*)0))
        s = *save_ptr;


    s += strspn (s, delim);
    if (*s == '\0')
        return ((void*)0);


    token = s;
    s = strpbrk (token, delim);
    if (s == ((void*)0))

        *save_ptr = strchr (token, '\0');
    else
    {

        *s = '\0';
        *save_ptr = s + 1;
    }
    return token;
}
