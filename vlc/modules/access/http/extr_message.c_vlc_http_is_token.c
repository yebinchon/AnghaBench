
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t vlc_http_token_length (char const*) ;

__attribute__((used)) static bool vlc_http_is_token(const char *str)
{
    size_t len = vlc_http_token_length(str);
    return len > 0 && str[len] == '\0';
}
