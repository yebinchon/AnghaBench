
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_NORMALIZE_NFC ;
 char* g_utf8_normalize (char const*,int,int ) ;
 int g_utf8_validate (char const*,int,int *) ;

char *
normalize_utf8_path (const char *path)
{
    if (!g_utf8_validate (path, -1, ((void*)0)))
        return ((void*)0);
    return g_utf8_normalize (path, -1, G_NORMALIZE_NFC);
}
