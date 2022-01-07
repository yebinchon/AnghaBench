
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* encode_URI_bytes (char const*,size_t*) ;
 scalar_t__ likely (int ) ;
 size_t strlen (char const*) ;

char *vlc_uri_encode (const char *str)
{
    size_t len = strlen (str);
    char *ret = encode_URI_bytes (str, &len);
    if (likely(ret != ((void*)0)))
        ret[len] = '\0';
    return ret;
}
