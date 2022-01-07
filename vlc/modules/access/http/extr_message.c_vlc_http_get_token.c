
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncasecmp (char const*,char const*,size_t const) ;
 char* vlc_http_next_token (char const*) ;
 size_t const vlc_http_token_length (char const*) ;

__attribute__((used)) static const char *vlc_http_get_token(const char *value, const char *token)
{
    const size_t length = strlen(token);

    while (value != ((void*)0))
    {
        if (vlc_http_token_length(value) == length
         && !strncasecmp(token, value, length))
            return value;

        value = vlc_http_next_token(value);
    }

    return ((void*)0);
}
