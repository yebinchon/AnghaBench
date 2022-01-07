
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strspn (char const*,char*) ;
 size_t vlc_http_comment_length (char const*) ;
 int vlc_http_istoken (char const) ;
 size_t vlc_http_token_length (char const*) ;

__attribute__((used)) static bool vlc_http_is_agent(const char *s)
{
    if (!vlc_http_istoken(*s))
        return 0;

    for (;;)
    {
        size_t l = vlc_http_token_length(s);
        if (l != 0)
        {
            if (s[l] == '/')
            {
                s += l + 1;
                l = vlc_http_token_length(s);
            }
        }
        else
            l = vlc_http_comment_length(s);

        if (l == 0)
            break;

        s += l;

        if (*s == '\0')
            return 1;

        l = strspn(s, "\t ");

        if (l == 0)
            break;

        s += l;
    }

    return 0;
}
