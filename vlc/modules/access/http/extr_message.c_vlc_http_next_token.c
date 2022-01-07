
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;
 int vlc_http_quoted_length (char const*) ;

const char *vlc_http_next_token(const char *value)
{
    value += strcspn(value, ",\"");
    if (!*value)
        return ((void*)0);

    value += vlc_http_quoted_length(value);
    return value + strspn(value, "\t ,");
}
