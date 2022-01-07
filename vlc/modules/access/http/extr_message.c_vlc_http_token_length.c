
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vlc_http_istoken (char const) ;

__attribute__((used)) static size_t vlc_http_token_length(const char *str)
{
    size_t i = 0;

    while (vlc_http_istoken(str[i]))
        i++;
    return i;
}
