
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* vlc_b64_encode_binary (char const*,int ) ;

char *vlc_b64_encode(const char *src)
{
    if (src == ((void*)0))
        src = "";
    return vlc_b64_encode_binary(src, strlen(src));
}
