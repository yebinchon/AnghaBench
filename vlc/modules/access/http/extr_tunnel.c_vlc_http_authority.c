
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char const* const,char const*,unsigned int) ;
 int * strchr (char const*,char) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static char *vlc_http_authority(const char *host, unsigned port)
{
    static const char *const formats[2] = { "%s:%u", "[%s]:%u" };
    const bool brackets = strchr(host, ':') != ((void*)0);
    char *authority;

    if (unlikely(asprintf(&authority, formats[brackets], host, port) == -1))
        return ((void*)0);
    return authority;
}
