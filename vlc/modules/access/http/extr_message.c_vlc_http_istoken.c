
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,int) ;

__attribute__((used)) static int vlc_http_istoken(int c)
{
    return (c >= '0' && c <= '9')
        || (c >= 'a' && c <= 'z')
        || (c >= 'A' && c <= 'Z')
        || (c && strchr("!#$%&'*+-.^_`|~", c) != ((void*)0));
}
