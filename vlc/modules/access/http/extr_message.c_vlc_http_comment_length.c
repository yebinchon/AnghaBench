
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_http_isctext (unsigned char) ;

__attribute__((used)) static size_t vlc_http_comment_length(const char *str)
{
    if (*str != '(')
        return 0;

    size_t i = 1;

    for (size_t nested = 1; nested > 0; i++)
    {
        unsigned char c = str[i];

        if (c == ')')
            nested--;
        else
        if (c == '(')
            nested++;
        else
        if (c == '\\')
        {
            i++;
            if (str[i] < 32)
                return 0;
        }
        else
        if (!vlc_http_isctext(c))
            return 0;
    }
    return i;
}
