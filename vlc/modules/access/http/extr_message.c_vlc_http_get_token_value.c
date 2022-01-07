
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* malloc (size_t) ;
 int strspn (char const*,char*) ;
 scalar_t__ unlikely (int ) ;
 char* vlc_http_get_token (char const*,char const*) ;
 size_t vlc_http_quoted_length (char const*) ;
 int vlc_http_token_length (char const*) ;

__attribute__((used)) static char *vlc_http_get_token_value(const char *value, const char *token)
{
    value = vlc_http_get_token(value, token);
    if (value == ((void*)0))
        return ((void*)0);

    value += vlc_http_token_length(value);
    value += strspn(value, " \t");

    if (*value != '=')
        return ((void*)0);

    value++;
    value += strspn(value, " \t");

    size_t len = vlc_http_quoted_length(value);
    if (len == 0)
        return ((void*)0);

    assert(len >= 2);
    value++;
    len -= 2;

    char *out = malloc(len + 1), *p;
    if (unlikely(out == ((void*)0)))
        return ((void*)0);

    for (p = out; len > 0; len--)
    {
        char c = *(value++);
        if (c == '\\')
        {
            c = *(value++);
            len--;
        }
        *(p++) = c;
    }
    *p = '\0';
    return out;
}
