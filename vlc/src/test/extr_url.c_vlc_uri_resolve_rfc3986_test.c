
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* vlc_uri_resolve (char*,char const*) ;

__attribute__((used)) static char *vlc_uri_resolve_rfc3986_test(const char *in)
{
    return vlc_uri_resolve("http://a/b/c/d;p?q", in);
}
