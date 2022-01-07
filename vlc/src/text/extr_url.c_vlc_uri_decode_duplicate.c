
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strdup (char const*) ;
 int * vlc_uri_decode (char*) ;

char *vlc_uri_decode_duplicate (const char *str)
{
    char *buf = strdup (str);
    if (vlc_uri_decode (buf) == ((void*)0))
    {
        free (buf);
        buf = ((void*)0);
    }
    return buf;
}
