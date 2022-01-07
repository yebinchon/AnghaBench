
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t vlc_http_quoted_length(const char *str)
{
    size_t i = 0;
    unsigned char c;

    if (str[i++] != '"')
        return 0;

    do
    {
        c = str[i++];

        if (c == '\0')
            return 0;

        if (c == '\\')
        {
            unsigned char q = str[i++];
            if (q < 32 && q != '\t')
                return 0;
        }
    }
    while (c != '"');

    return i;
}
